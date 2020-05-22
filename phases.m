function [unpunct_phase,punct_phase] = phases(start, samples, phase_th, ...
    Estimation_error, Estimation_errorD)
% It collects all the puncturing phases and all the non-puncturing phases
% tIN contains all the times in which a puncturing event starts, tFIN the
% ones in which it ends
tIN = [start];
tFIN = [];
unpunct_phase = [];
    punct_phase = [];
for t = start+1 : samples
    if Estimation_errorD(t-1)>-phase_th && Estimation_errorD(t)<-phase_th
        tIN = [tIN; t];
    end
    if Estimation_errorD(t-1)>phase_th && Estimation_errorD(t)<phase_th
        tFIN = [tFIN; t];
    end
end

tIN = [tIN; samples];
len_tIN = length(tIN);

if len_tIN ~= length(tFIN)+1
    disp("Problem in phases detection!");
    unpunct_phase = [];
    punct_phase = [];
    return 
end


for i=1:len_tIN-1
    punct_phase=[punct_phase; Estimation_error(tIN(i)+1:tFIN(i)-1)];
    
    unpunct_phase = [unpunct_phase; Estimation_error(tFIN(i):tIN(i+1)-1)];
end
unpunct_phase = [unpunct_phase; Estimation_error(tFIN(i):tIN(i+1)-1)];
end