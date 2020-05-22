function j = Geometric_Jacobian_col(T, T_fin)

z = T(1:3,3);
pe = T_fin(1:3,4); 
p = T(1:3,4);

jp = cross(z, (pe - p));
jo = z;
j = [jp; jo];
end

