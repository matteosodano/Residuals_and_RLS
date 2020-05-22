function [Estimation_error, Estimation_errorD, F_hat, flag, puncturing_event, phase_th,Theta] = layerDetection(samples, n, needle_length, ...
    deltaTime, num_transitions, P, PD, F)


%flat(t) = 1 if a layer transition has been detected, 0 otherwise
flag = zeros(samples,1); 

%% initialization of variables 
% time history of the parameters: Theta = [K B]
theta0 = (F(1)*pinv([-P(1); -PD(1)]))';
Theta = zeros(samples, 2);
Theta(1,:) = theta0'; 

% covariance matrix
%Psi0 = diag([25, 4]); % for sin_traj and sin_traj_H
Psi0 = diag([35,1]); % for liver
Psi = Psi0;

% if, at time t, trace(Psi(t)) < tracePsi_th, then set Psi(t)=Psi0
%tracePsi_th = 5; % for sin_traj and sin_traj_H
tracePsi_th = 2; % for liver

% counts how many times the Psi(t) is resetted to Psi0
cr_counter = 0; 


decision_function = 0;  % formula 9

F_hat = zeros(samples, 1);
Estimation_error = zeros(samples, 1);

%% loop for computing the force estimation error
for t=1:samples
    
    phi = [-P(t); -PD(t)];
    theta = Theta(t, :)';
    F_hat(t) = phi'*theta; % formula 2
    error = F(t)-F_hat(t);
    Estimation_error(t) = error;
    
    % RLS ALGORITHM
    Theta(t+1,:) = theta + (Psi*phi*error)/(1 + phi'*Psi*phi); % formula 4
    
    Psi = Psi - (Psi*phi*phi'*Psi) / (1 + phi'*Psi*phi); % formula 5
    
    % COVARIANCE RESETTING
    if trace(Psi) < tracePsi_th
        Psi = Psi0;
        cr_counter = cr_counter + 1; % not used
    end        
end

Estimation_error=NoncausalButterworthFilter(Estimation_error);
Estimation_errorD=TimeDerivative(Estimation_error, deltaTime);

%% computation of the flag via decision function
%start = FindStart(samples, Estimation_error);
start = 1;

[sigma0, sigma1, phase_th] = errorStd(start, samples, ...
    num_transitions,Estimation_error,Estimation_errorD);

gamma = (sigma1^2 - sigma0^2)/2;
ni = (sigma1^2 + sigma0^2)/2;

for t = start:samples
    d = Estimation_error(t)^2;
    decision_function = max(decision_function + d - ni,0); % formula 9
    if decision_function > gamma
        flag(t) = 1;   
    end
  
end

puncturing_event = [];
for t = start+1:samples
    if flag(t) == 1 && flag(t-1) == 0
        puncturing_event = [puncturing_event; t];
    end
end


