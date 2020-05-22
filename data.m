needle_length = 0.23;
n = 7;% # of joints

%sinTraj_1
Q = importdata('gelExperimentsDataset/sinTraj_1_NotEnhanced/sinTraj_1_NEN_201908301350200772_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_1_NotEnhanced/sinTraj_1_NEN_201908301350200292_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_1_NotEnhanced/sinTraj_1_NEN_201908301350200412_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_1_NotEnhanced/sinTraj_1_NEN_201908301350199512_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_1_NotEnhanced/sinTraj_1_NEN_201908301350199872_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_1';
num_transitions = 2;

rQ = size(Q, 1);
rTAU = size(TAU, 1);
rF_EXT = size(F_EXT, 1);
rR_KUKA = size(R_KUKA,1);
samples = min([rQ, rTAU, rF_EXT, rR_KUKA]);

deltaTime = Q(2,1)-Q(1,1);
time = 0:deltaTime:samples*deltaTime;
time = time(1:(end-1));

R_KUKA = R_KUKA(1:samples,2:8);
R_KUKA = NoncausalButterworthFilter(-R_KUKA);

Q = Q(1:samples, 2:n+1);
Q = NoncausalButterworthFilter(Q);

TAU = TAU(1:samples, 2:n+1);
TAU = NoncausalButterworthFilter(TAU);

F_EXT = F_EXT(1:samples, 2:4);
F_EXT = NoncausalButterworthFilter(F_EXT);


QD = TimeDerivative(Q, deltaTime);
QDD = TimeDerivative(QD, deltaTime);

P = zeros(samples,1);
PD = zeros(samples,1);

for t=1:samples
    q = Q(t, :)';
    qd = QD(t, :)';
    
    T = get_transform(q,needle_length);
    P(t) = T{7}(3,4)';

    J = Geometric_Jacobian(q, needle_length, n);
    PD(t) = J(3,:)*qd;
end
P = NoncausalButterworthFilter(P);
PD = NoncausalButterworthFilter(PD);