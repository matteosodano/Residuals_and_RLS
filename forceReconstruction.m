function [R, F_EXT_RECON, TAU_PREDICT,F_EXT,TAU_FRICTION] = forceReconstruction(gain, samples, n, needle_length, ...
    deltaTime, Q, QD, QDD, TAU,F_EXT)
% It reconstructs the time history of the residuals and of the 
% force excerted on the needle via residuals method.

% initialization
sumTau = zeros(n, 1);
sumH = zeros(n, 1);
sumRes = zeros(n, 1);

R = zeros(samples, n);
F_EXT_RECON = zeros(samples, 3);
TAU_PREDICT = zeros(samples, n);
TAU_FRICTION = zeros(samples, n);

% algorithm
for t = 1:samples
   q = Q(t, :)';
   qd = QD(t, :)';
   qdd = QDD(t, :)';
   tau = TAU(t, :)'; 
   
   tau_friction = [0;0;0;0;0;0;0];
   %tau_friction = getLWRTauFriction(qd);
   
   TAU_FRICTION(t, :) = tau_friction;
   
   % computing B, S, g, J
   B = get_Bnum(q);
   S = get_Snum(q, qd);
   g = get_gnum(q);
   J = Geometric_Jacobian(q, needle_length, n);
   
   TAU_PREDICT(t,:)  = (B*qdd + S*qd + g)';
   h = S' * qd - g;
   sumTau = sumTau + tau - tau_friction;
   sumH = sumH + h;
   
   %%%% RESIDUAL METHOD %%%%
   if t == 1
       p0 = B*qd;
       r = zeros(7,1);
   else
       r = inv(eye(7)+gain*deltaTime) * gain * ((B*qd - p0) - (sumTau + sumH + sumRes)*deltaTime);
       sumRes = sumRes + r;
   end
   
   f_ext_recon = pinv(J(1:3, :)')*r;
  
   
   %%%% data for plots %%%%
   R(t, :) = r';
   F_EXT_RECON(t, :) = f_ext_recon';
   
   
end
F_EXT0 = pinv(J(1:3, :)')*(-TAU(1,:)+TAU_PREDICT(1,:))';
F_EXT_RECON = F_EXT_RECON-F_EXT0';
R = NoncausalButterworthFilter(R);
F_EXT_RECON = NoncausalButterworthFilter(F_EXT_RECON);
end
