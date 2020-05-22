clear;
close all;
clc;

data;

% If the joint friction is taken into account, open forceReconstruction and
% uncomment line 22
gain = 1000*diag([100, 60, 160, 200, 120, 80, 125]);
[R, F_EXT_RECON, TAU_PREDICT,F_EXT,TAU_FRICTION] = forceReconstruction(gain, samples, n, needle_length, ...
    deltaTime, Q, QD, QDD, TAU,F_EXT);

[Estimation_error, Estimation_errorD, F_hat, flag, puncturing_event,phase_th,Theta] = layerDetection(samples, n, needle_length, ...
    deltaTime, num_transitions, P, PD, F_EXT_RECON(:, 3));

% The following line returns the values of K and B using the measured force
% as input. These are considered as the "true" values of the parameters.
[~, ~, ~, ~, ~, ~, Theta2] = layerDetection(samples, n, needle_length, ...
   deltaTime, num_transitions, P, PD, -F_EXT(:, 3));

plots;