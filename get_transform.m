function T = get_transform(q, needle_length)

    c1 = cos(q(1));
    s1 = sin(q(1));
    c2 = cos(q(2));
    s2 = sin(q(2));
    c3 = cos(q(3));
    s3 = sin(q(3));
    c4 = cos(q(4));
    s4 = sin(q(4));
    c5 = cos(q(5));
    s5 = sin(q(5));
    c6 = cos(q(6));
    s6 = sin(q(6));
    c7 = cos(q(7));
    s7 = sin(q(7));
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	d1 = 0.0; % the base frame is on the second joint
    d3 = 0.4;
    d5 = 0.39;
    d7 = needle_length; % EE in the tip of KUKA without auxiliary addition
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    A1   =                  [c1 0  s1 0;
                             s1 0 -c1 0;
                             0  1  0  d1;
                             0  0  0  1];

    A2   =                  [c2  0 -s2 0;
                             s2  0  c2 0;
                             0  -1  0  0;
                             0   0  0  1];
                         
    A3   =                  [c3  0 -s3 0;
                             s3  0  c3 0;
                             0  -1  0  d3;
                             0   0  0  1];                         

    A4   =                  [c4 0  s4 0;
                             s4 0 -c4 0;
                             0  1  0  0;
                             0  0  0  1];
                         
    A5   =                  [c5 0  s5 0;
                             s5 0 -c5 0;
                             0  1  0  d5;
                             0  0  0  1];
                         
    A6   =                  [c6  0 -s6 0;
                             s6  0  c6 0;
                             0  -1  0  0;
                             0   0  0  1];
                         
    A7   =                  [c7 -s7 0  0;
                             s7  c7 0  0;
                             0   0  1  d7;
                             0   0  0  1];
    T1 = A1;
    T2 = T1 * A2;
    T3 = T2 * A3;
    T4 = T3 * A4;
    T5 = T4 * A5;
    T6 = T5 * A6;
    T7 = T6 * A7;
    T = {T1, T2, T3, T4, T5, T6, T7};
    
end