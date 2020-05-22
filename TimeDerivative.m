%%%%%%%%%%%%
% NEW CODE %
%%%%%%%%%%%%
function MatrixD_filt = TimeDerivative(Matrix, deltaTime)
% It returns the filtered version of the incremential retio of matrix.
% Matrix collects the time history of a vector (it is a thin matrix). 
% Its rows are the samples, its colums are different components of the 
% vector.
[num_of_samples, num_of_components] = size(Matrix);
MatrixD = zeros(num_of_samples, num_of_components);
MatrixD_filt = zeros(num_of_samples, num_of_components);

for j = 1 : num_of_components
    for i = 1:num_of_samples-1
        MatrixD(i,j) = (Matrix(i+1,j)-Matrix(i,j))/deltaTime;
    end    
    MatrixD_filt(:,j) = NoncausalButterworthFilter(MatrixD(:,j));   
end
end