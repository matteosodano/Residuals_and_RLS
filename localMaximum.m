function [peakj, instantj] = localMaximum(start, samples, f, j)
% It computes the value of the j-th local maximum of f, and the time
% stamp in which it appears

peaks = zeros(samples, 1);
peaks(1) = f(1);
% find the local maxima of abs_f
for i = start+1:samples-1
    if f(i) > f(i-1) && f(i) > f(i+1)
        peaks(i+1) = f(i);
    end
end
[peaks, indices] = sort(peaks, 'descend');
peakj = peaks(j);
instantj = indices(j);
end

