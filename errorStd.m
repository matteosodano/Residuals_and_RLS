function [sigma0, sigma1, phase_th] = errorStd(start, samples, ...
    num_transitions,Estimation_error,Estimation_errorD)
% If needed, it computes the default case (sigma0) and the abrupt change 
% case (sigma0) standard deviations
[phase_th, ~] = localMaximum(start, samples, abs(Estimation_errorD),...
    2*num_transitions+1);
[unpunct_phase,punct_phase] = phases(start, samples, phase_th, ...
    Estimation_error, Estimation_errorD);

sigma0 = std(unpunct_phase);
sigma1 = std(punct_phase);
end

