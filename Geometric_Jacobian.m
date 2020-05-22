function J = Geometric_Jacobian(q, needle_length, n)
T = get_transform(q, needle_length);
J = zeros(6, n);
J(:,1) = Geometric_Jacobian_col(eye(4), T{n});
for i = 2:n
    J(:,i) = Geometric_Jacobian_col(T{i-1}, T{n});
end


