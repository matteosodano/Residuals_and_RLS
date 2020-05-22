%sinTraj_1
Q = importdata('gelExperimentsDataset/sinTraj_1_NotEnhanced/sinTraj_1_NEN_201908301350200772_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_1_NotEnhanced/sinTraj_1_NEN_201908301350200292_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_1_NotEnhanced/sinTraj_1_NEN_201908301350200412_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_1_NotEnhanced/sinTraj_1_NEN_201908301350199512_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_1_NotEnhanced/sinTraj_1_NEN_201908301350199872_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_1';
num_transitions = 2;

%sinTraj_1h
Q = importdata('gelExperimentsDataset/sinTraj_1h_NotEnhanced/sinTraj_1h_NEN_201908301440366218_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_1h_NotEnhanced/sinTraj_1h_NEN_201908301440365728_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_1h_NotEnhanced/sinTraj_1h_NEN_201908301440365868_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_1h_NotEnhanced/sinTraj_1h_NEN_201908301440364957_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_1h_NotEnhanced/sinTraj_1h_NEN_201908301440365297_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_1h';
num_transitions = 2;

%sinTraj_2
Q = importdata('gelExperimentsDataset/sinTraj_2_NotEnhanced/sinTraj_2_NEN_201908301351586839_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_2_NotEnhanced/sinTraj_2_NEN_201908301351586359_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_2_NotEnhanced/sinTraj_2_NEN_201908301351586479_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_2_NotEnhanced/sinTraj_2_NEN_201908301351585619_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_2_NotEnhanced/sinTraj_2_NEN_201908301351585949_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_2';
num_transitions = 2;

%sinTraj_2h
Q = importdata('gelExperimentsDataset/sinTraj_2h_NotEnhanced/sinTraj_2h_NEN_201908301442218668_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_2h_NotEnhanced/sinTraj_2h_NEN_201908301442218178_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_2h_NotEnhanced/sinTraj_2h_NEN_201908301442218308_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_2h_NotEnhanced/sinTraj_2h_NEN_201908301442217388_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_2h_NotEnhanced/sinTraj_2h_NEN_201908301442217748_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_2h';
num_transitions = 2;

%sinTraj_3
Q = importdata('gelExperimentsDataset/sinTraj_3_NotEnhanced/sinTraj_3_NEN_201908301353125871_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_3_NotEnhanced/sinTraj_3_NEN_201908301353125391_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_3_NotEnhanced/sinTraj_3_NEN_201908301353125521_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_3_NotEnhanced/sinTraj_3_NEN_201908301353124641_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_3_NotEnhanced/sinTraj_3_NEN_201908301353124981_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_3';
num_transitions = 2;

%sinTraj_3h
Q = importdata('gelExperimentsDataset/sinTraj_3h_NotEnhanced/sinTraj_3h_NEN_201908301444590018_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_3h_NotEnhanced/sinTraj_3h_NEN_201908301444589538_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_3h_NotEnhanced/sinTraj_3h_NEN_201908301444589668_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_3h_NotEnhanced/sinTraj_3h_NEN_201908301444588738_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_3h_NotEnhanced/sinTraj_3h_NEN_201908301444589108_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_3h';
num_transitions = 2;

%sinTraj_4
Q = importdata('gelExperimentsDataset/sinTraj_4_NotEnhanced/sinTraj_4_NEN_201908301354329127_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_4_NotEnhanced/sinTraj_4_NEN_201908301354328637_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_4_NotEnhanced/sinTraj_4_NEN_201908301354328767_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_4_NotEnhanced/sinTraj_4_NEN_201908301354327837_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_4_NotEnhanced/sinTraj_4_NEN_201908301354328207_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_4';
num_transitions = 2;

%sinTraj_4h
Q = importdata('gelExperimentsDataset/sinTraj_4h_NotEnhanced/sinTraj_4h_NEN_201908301446491161_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_4h_NotEnhanced/sinTraj_4h_NEN_201908301446490681_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_4h_NotEnhanced/sinTraj_4h_NEN_201908301446490801_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_4h_NotEnhanced/sinTraj_4h_NEN_201908301446489891_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_4h_NotEnhanced/sinTraj_4h_NEN_201908301446490251_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_4h';
num_transitions = 2;

%sinTraj_5
Q = importdata('gelExperimentsDataset/sinTraj_5_NotEnhanced/sinTraj_5_NEN_201908301357203623_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_5_NotEnhanced/sinTraj_5_NEN_201908301357203133_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_5_NotEnhanced/sinTraj_5_NEN_201908301357203263_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_5_NotEnhanced/sinTraj_5_NEN_201908301357202342_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_5_NotEnhanced/sinTraj_5_NEN_201908301357202703_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_5';
num_transitions = 2;

%sinTraj_5h
Q = importdata('gelExperimentsDataset/sinTraj_5h_NotEnhanced/sinTraj_5h_NEN_201908301447451863_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_5h_NotEnhanced/sinTraj_5h_NEN_201908301447451373_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_5h_NotEnhanced/sinTraj_5h_NEN_201908301447451503_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_5h_NotEnhanced/sinTraj_5h_NEN_201908301447450583_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_5h_NotEnhanced/sinTraj_5h_NEN_201908301447450943_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_5h';
num_transitions = 2;

%sinTraj_6
Q = importdata('gelExperimentsDataset/sinTraj_6_NotEnhanced/sinTraj_6_NEN_201908301402140761_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_6_NotEnhanced/sinTraj_6_NEN_201908301402140281_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_6_NotEnhanced/sinTraj_6_NEN_201908301402140401_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_6_NotEnhanced/sinTraj_6_NEN_201908301402139490_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_6_NotEnhanced/sinTraj_6_NEN_201908301402139851_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_6';
num_transitions = 2;

%sinTraj_6h
Q = importdata('gelExperimentsDataset/sinTraj_6h_NotEnhanced/sinTraj_6h_NEN_201908301448521321_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_6h_NotEnhanced/sinTraj_6h_NEN_201908301448520831_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_6h_NotEnhanced/sinTraj_6h_NEN_201908301448520961_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_6h_NotEnhanced/sinTraj_6h_NEN_201908301448520021_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_6h_NotEnhanced/sinTraj_6h_NEN_201908301448520381_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_6h';
num_transitions = 2;

%sinTraj_7
Q = importdata('gelExperimentsDataset/sinTraj_7_NotEnhanced/sinTraj_7_NEN_201908301403257962_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_7_NotEnhanced/sinTraj_7_NEN_201908301403257472_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_7_NotEnhanced/sinTraj_7_NEN_201908301403257602_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_7_NotEnhanced/sinTraj_7_NEN_201908301403256692_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_7_NotEnhanced/sinTraj_7_NEN_201908301403257062_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_7';
num_transitions = 2;

%sinTraj_7h
Q = importdata('gelExperimentsDataset/sinTraj_7h_NotEnhanced/sinTraj_7h_NEN_201908301449561038_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_7h_NotEnhanced/sinTraj_7h_NEN_201908301449560538_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_7h_NotEnhanced/sinTraj_7h_NEN_201908301449560668_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_7h_NotEnhanced/sinTraj_7h_NEN_201908301449559727_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_7h_NotEnhanced/sinTraj_7h_NEN_201908301449560097_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_7h';
num_transitions = 2;

%sinTraj_8
Q = importdata('gelExperimentsDataset/sinTraj_8_NotEnhanced/sinTraj_8_NEN_201908301404291248_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_8_NotEnhanced/sinTraj_8_NEN_201908301404290768_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_8_NotEnhanced/sinTraj_8_NEN_201908301404290888_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_8_NotEnhanced/sinTraj_8_NEN_201908301404289968_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_8_NotEnhanced/sinTraj_8_NEN_201908301404290328_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_8';
num_transitions = 2;

%sinTraj_8h
Q = importdata('gelExperimentsDataset/sinTraj_8h_NotEnhanced/sinTraj_8h_NEN_201908301452331127_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_8h_NotEnhanced/sinTraj_8h_NEN_201908301452330657_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_8h_NotEnhanced/sinTraj_8h_NEN_201908301452330777_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_8h_NotEnhanced/sinTraj_8h_NEN_201908301452329887_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_8h_NotEnhanced/sinTraj_8h_NEN_201908301452330227_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_8h';
num_transitions = 2;

%sinTraj_9
Q = importdata('gelExperimentsDataset/sinTraj_9_NotEnhanced/sinTraj_9_NEN_201908301406004710_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_9_NotEnhanced/sinTraj_9_NEN_201908301406004230_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_9_NotEnhanced/sinTraj_9_NEN_201908301406004350_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_9_NotEnhanced/sinTraj_9_NEN_201908301406003450_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_9_NotEnhanced/sinTraj_9_NEN_201908301406003810_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_9';
num_transitions = 2;

%sinTraj_9h
Q = importdata('gelExperimentsDataset/sinTraj_9h_NotEnhanced/sinTraj_9h_NEN_201908301454262872_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_9h_NotEnhanced/sinTraj_9h_NEN_201908301454262382_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_9h_NotEnhanced/sinTraj_9h_NEN_201908301454262512_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_9h_NotEnhanced/sinTraj_9h_NEN_201908301454261612_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_9h_NotEnhanced/sinTraj_9h_NEN_201908301454261962_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_9h';
num_transitions = 2;

%sinTraj_10
Q = importdata('gelExperimentsDataset/sinTraj_10_NotEnhanced/sinTraj_10_NEN_201908301406518699_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_10_NotEnhanced/sinTraj_10_NEN_201908301406518209_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_10_NotEnhanced/sinTraj_10_NEN_201908301406518339_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_10_NotEnhanced/sinTraj_10_NEN_201908301406517409_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_10_NotEnhanced/sinTraj_10_NEN_201908301406517779_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_10';
num_transitions = 2;

%sinTraj_10h
Q = importdata('gelExperimentsDataset/sinTraj_10h_NotEnhanced/sinTraj_10h_NEN_201908301455191282_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/sinTraj_10h_NotEnhanced/sinTraj_10h_NEN_201908301455190792_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/sinTraj_10h_NotEnhanced/sinTraj_10h_NEN_201908301455190922_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/sinTraj_10h_NotEnhanced/sinTraj_10h_NEN_201908301455190012_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/sinTraj_10h_NotEnhanced/sinTraj_10h_NEN_201908301455190372_KUKA_Residual_Vector.dat',',');
title = 'sinTraj\_10h';
num_transitions = 2;

%teleop_1
Q = importdata('gelExperimentsDataset/teleop_1_NotEnhanced/teleop_1_NEN_201908301410528737_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/teleop_1_NotEnhanced/teleop_1_NEN_201908301410528127_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/teleop_1_NotEnhanced/teleop_1_NEN_201908301410528267_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/teleop_1_NotEnhanced/teleop_1_NEN_201908301410527047_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/teleop_1_NotEnhanced/teleop_1_NEN_201908301410527517_KUKA_Residual_Vector.dat',',');
title = 'teleop\_1';
num_transitions = 2;

%teleop_2
Q = importdata('gelExperimentsDataset/teleop_2_NotEnhanced/teleop1_NEN_201908301335571799_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/teleop_2_NotEnhanced/teleop1_NEN_201908301335571209_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/teleop_2_NotEnhanced/teleop1_NEN_201908301335571349_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/teleop_2_NotEnhanced/teleop1_NEN_201908301335570229_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/teleop_2_NotEnhanced/teleop1_NEN_201908301335570639_KUKA_Residual_Vector.dat',',');
title = 'teleop\_2';
num_transitions = 1;

%teleop_3
Q = importdata('gelExperimentsDataset/teleop_3_NotEnhanced/teleop_3_NEN_201908301414490572_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/teleop_3_NotEnhanced/teleop_3_NEN_201908301414489982_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/teleop_3_NotEnhanced/teleop_3_NEN_201908301414490132_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/teleop_3_NotEnhanced/teleop_3_NEN_201908301414489022_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/teleop_3_NotEnhanced/teleop_3_NEN_201908301414489422_KUKA_Residual_Vector.dat',',');
title = 'teleop\_3';
num_transitions = 2;

%teleop_4
Q = importdata('gelExperimentsDataset/teleop_4_NotEnhanced/teleop_4_NEN_201908301417009708_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/teleop_4_NotEnhanced/teleop_4_NEN_201908301417009098_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/teleop_4_NotEnhanced/teleop_4_NEN_201908301417009238_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/teleop_4_NotEnhanced/teleop_4_NEN_201908301417008028_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/teleop_4_NotEnhanced/teleop_4_NEN_201908301417008488_KUKA_Residual_Vector.dat',',');
title = 'teleop\_4';
num_transitions = 2;

%teleop_5
Q = importdata('gelExperimentsDataset/teleop_5_NotEnhanced/teleop_5_NEN_201908301419498244_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/teleop_5_NotEnhanced/teleop_5_NEN_201908301419497634_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/teleop_5_NotEnhanced/teleop_5_NEN_201908301419497784_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/teleop_5_NotEnhanced/teleop_5_NEN_201908301419496624_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/teleop_5_NotEnhanced/teleop_5_NEN_201908301419497054_KUKA_Residual_Vector.dat',',');
title = 'teleop\_5';
num_transitions = 2;

%teleop_6
Q = importdata('gelExperimentsDataset/teleop_6_NotEnhanced/teleop_6_NEN_201908301421369726_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/teleop_6_NotEnhanced/teleop_6_NEN_201908301421369106_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/teleop_6_NotEnhanced/teleop_6_NEN_201908301421369266_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/teleop_6_NotEnhanced/teleop_6_NEN_201908301421368056_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/teleop_6_NotEnhanced/teleop_6_NEN_201908301421368506_KUKA_Residual_Vector.dat',',');
title = 'teleop\_6';
num_transitions = 2;

%teleop_7
Q = importdata('gelExperimentsDataset/teleop_7_NotEnhanced/teleop_7_NEN_201908301425121029_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/teleop_7_NotEnhanced/teleop_7_NEN_201908301425120479_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/teleop_7_NotEnhanced/teleop_7_NEN_201908301425120609_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/teleop_7_NotEnhanced/teleop_7_NEN_201908301425119529_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/teleop_7_NotEnhanced/teleop_7_NEN_201908301425119939_KUKA_Residual_Vector.dat',',');
title = 'teleop\_7';
num_transitions = 2;

%teleop_8
Q = importdata('gelExperimentsDataset/teleop_8_NotEnhanced/teleop_8_NEN_201908301427076105_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/teleop_8_NotEnhanced/teleop_8_NEN_201908301427075555_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/teleop_8_NotEnhanced/teleop_8_NEN_201908301427075695_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/teleop_8_NotEnhanced/teleop_8_NEN_201908301427074615_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/teleop_8_NotEnhanced/teleop_8_NEN_201908301427075015_KUKA_Residual_Vector.dat',',');
title = 'teleop\_8';
num_transitions = 2;

%teleop_9
Q = importdata('gelExperimentsDataset/teleop_9_NotEnhanced/teleop_9_NEN_201908301429494177_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/teleop_9_NotEnhanced/teleop_9_NEN_201908301429493627_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/teleop_9_NotEnhanced/teleop_9_NEN_201908301429493757_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/teleop_9_NotEnhanced/teleop_9_NEN_201908301429492717_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/teleop_9_NotEnhanced/teleop_9_NEN_201908301429493107_KUKA_Residual_Vector.dat',',');
title = 'teleop\_9';
num_transitions = 2;

%teleop_10
Q = importdata('gelExperimentsDataset/teleop_10_NotEnhanced/teleop_10_NEN_201908301433308274_Joint_Positions.dat',',');
TAU = importdata('gelExperimentsDataset/teleop_10_NotEnhanced/teleop_10_NEN_201908301433307684_Joint_Torques.dat',',');
TAU_MOD = importdata('gelExperimentsDataset/teleop_10_NotEnhanced/teleop_10_NEN_201908301433307824_Model_Joint_Torques.dat',',');
F_EXT = importdata('gelExperimentsDataset/teleop_10_NotEnhanced/teleop_10_NEN_201908301433306674_Force_Sensor.dat',',');
R_KUKA = importdata('gelExperimentsDataset/teleop_10_NotEnhanced/teleop_10_NEN_201908301433307114_KUKA_Residual_Vector.dat',',');
title = 'teleop\_10';
num_transitions = 2;


%latexLiver1
Q = importdata('liverExperimentsDataset/latexLiver1_NotEnhanced/latexLiver1_NEN_201909021412596682_Joint_Positions.dat',',');
TAU = importdata('liverExperimentsDataset/latexLiver1_NotEnhanced/latexLiver1_NEN_201909021412596192_Joint_Torques.dat',',');
TAU_MOD = importdata('liverExperimentsDataset/latexLiver1_NotEnhanced/latexLiver1_NEN_201909021412596312_Model_Joint_Torques.dat',',');
F_EXT = importdata('liverExperimentsDataset/latexLiver1_NotEnhanced/latexLiver1_NEN_201909021412595192_Force_Sensor.dat',',');
R_KUKA = importdata('liverExperimentsDataset/latexLiver1_NotEnhanced/latexLiver1_NEN_201909021412595752_KUKA_Residual_Vector.dat',',');
title = 'latexLiver1';
num_transitions = 2;

%latexLiver2
Q = importdata('liverExperimentsDataset/latexLiver2_NotEnhanced/latexLiver2_NEN_201909021418081488_Joint_Positions.dat',',');
TAU = importdata('liverExperimentsDataset/latexLiver2_NotEnhanced/latexLiver2_NEN_201909021418080998_Joint_Torques.dat',',');
TAU_MOD = importdata('liverExperimentsDataset/latexLiver2_NotEnhanced/latexLiver2_NEN_201909021418081118_Model_Joint_Torques.dat',',');
F_EXT = importdata('liverExperimentsDataset/latexLiver2_NotEnhanced/latexLiver2_NEN_201909021418080028_Force_Sensor.dat',',');
R_KUKA = importdata('liverExperimentsDataset/latexLiver2_NotEnhanced/latexLiver2_NEN_201909021418080558_KUKA_Residual_Vector.dat',',');
title = 'latexLiver2';
num_transitions = 2;

%latexLiver3
Q = importdata('liverExperimentsDataset/latexLiver3_NotEnhanced/latexLiver3_NEN_201909021423077575_Joint_Positions.dat',',');
TAU = importdata('liverExperimentsDataset/latexLiver3_NotEnhanced/latexLiver3_NEN_201909021423077065_Joint_Torques.dat',',');
TAU_MOD = importdata('liverExperimentsDataset/latexLiver3_NotEnhanced/latexLiver3_NEN_201909021423077205_Model_Joint_Torques.dat',',');
F_EXT = importdata('liverExperimentsDataset/latexLiver3_NotEnhanced/latexLiver3_NEN_201909021423076224_Force_Sensor.dat',',');
R_KUKA = importdata('liverExperimentsDataset/latexLiver3_NotEnhanced/latexLiver3_NEN_201909021423076625_KUKA_Residual_Vector.dat',',');
title = 'latexLiver3';
num_transitions = 3;

%latexLiver4
Q = importdata('liverExperimentsDataset/latexLiver4_NotEnhanced/latexLiver4_NEN_201909021426411379_Joint_Positions.dat',',');
TAU = importdata('liverExperimentsDataset/latexLiver4_NotEnhanced/latexLiver4_NEN_201909021426410899_Joint_Torques.dat',',');
TAU_MOD = importdata('liverExperimentsDataset/latexLiver4_NotEnhanced/latexLiver4_NEN_201909021426411019_Model_Joint_Torques.dat',',');
F_EXT = importdata('liverExperimentsDataset/latexLiver4_NotEnhanced/latexLiver4_NEN_201909021426410079_Force_Sensor.dat',',');
R_KUKA = importdata('liverExperimentsDataset/latexLiver4_NotEnhanced/latexLiver4_NEN_201909021426410459_KUKA_Residual_Vector.dat',',');
title = 'latexLiver4';
num_transitions = 2;
 
%latexLiver5
Q = importdata('liverExperimentsDataset/latexLiver5_NotEnhanced/latexLiver5_NEN_201909021428520339_Joint_Positions.dat',',');
TAU = importdata('liverExperimentsDataset/latexLiver5_NotEnhanced/latexLiver5_NEN_201909021428519819_Joint_Torques.dat',',');
TAU_MOD = importdata('liverExperimentsDataset/latexLiver5_NotEnhanced/latexLiver5_NEN_201909021428519959_Model_Joint_Torques.dat',',');
F_EXT = importdata('liverExperimentsDataset/latexLiver5_NotEnhanced/latexLiver5_NEN_201909021428518999_Force_Sensor.dat',',');
title = 'latexLiver5';
num_transitions = 2;

%latexLiver6
Q = importdata('liverExperimentsDataset/latexLiver6_NotEnhanced/latexLiver6_NEN_201909021433357978_Joint_Positions.dat',',');
TAU = importdata('liverExperimentsDataset/latexLiver6_NotEnhanced/latexLiver6_NEN_201909021433357488_Joint_Torques.dat',',');
TAU_MOD = importdata('liverExperimentsDataset/latexLiver6_NotEnhanced/latexLiver6_NEN_201909021433357618_Model_Joint_Torques.dat',',');
F_EXT = importdata('liverExperimentsDataset/latexLiver6_NotEnhanced/latexLiver6_NEN_201909021433356668_Force_Sensor.dat',',');
title = 'latexLiver6';
num_transitions = 3;

%latexLiver7
Q = importdata('liverExperimentsDataset/latexLiver7_NotEnhanced/latexLiver7_NEN_201909021432010144_Joint_Positions.dat',',');
TAU = importdata('liverExperimentsDataset/latexLiver7_NotEnhanced/latexLiver7_NEN_201909021432009664_Joint_Torques.dat',',');
TAU_MOD = importdata('liverExperimentsDataset/latexLiver7_NotEnhanced/latexLiver7_NEN_201909021432009794_Model_Joint_Torques.dat',',');
F_EXT = importdata('liverExperimentsDataset/latexLiver7_NotEnhanced/latexLiver7_NEN_201909021432008854_Force_Sensor.dat',',');
R_KUKA = importdata('liverExperimentsDataset/latexLiver7_NotEnhanced/latexLiver7_NEN_201909021432009224_KUKA_Residual_Vector.dat',',');
title = 'latexLiver7';
num_transitions = 4;

%latexLiver8
Q = importdata('liverExperimentsDataset/latexLiver8_NotEnhanced/latexLiver8_NEN_201909021435101436_Joint_Positions.dat',',');
TAU = importdata('liverExperimentsDataset/latexLiver8_NotEnhanced/latexLiver8_NEN_201909021435100936_Joint_Torques.dat',',');
TAU_MOD = importdata('liverExperimentsDataset/latexLiver8_NotEnhanced/latexLiver8_NEN_201909021435101056_Model_Joint_Torques.dat',',');
F_EXT = importdata('liverExperimentsDataset/latexLiver8_NotEnhanced/latexLiver8_NEN_201909021435100166_Force_Sensor.dat',',');
R_KUKA = importdata('liverExperimentsDataset/latexLiver8_NotEnhanced/latexLiver8_NEN_201909021435100516_KUKA_Residual_Vector.dat',',');
title = 'latexLiver8';
num_transitions = 2;

%latexLiver9
Q = importdata('liverExperimentsDataset/latexLiver9_NotEnhanced/latexLiver9_NEN_201909021436045861_Joint_Positions.dat',',');
TAU = importdata('liverExperimentsDataset/latexLiver9_NotEnhanced/latexLiver9_NEN_201909021436045361_Joint_Torques.dat',',');
TAU_MOD = importdata('liverExperimentsDataset/latexLiver9_NotEnhanced/latexLiver9_NEN_201909021436045491_Model_Joint_Torques.dat',',');
F_EXT = importdata('liverExperimentsDataset/latexLiver9_NotEnhanced/latexLiver9_NEN_201909021436044571_Force_Sensor.dat',',');
R_KUKA = importdata('liverExperimentsDataset/latexLiver9_NotEnhanced/latexLiver9_NEN_201909021436044931_KUKA_Residual_Vector.dat',',');
title = 'latexLiver9';
num_transitions = 2;

%latexLiver10
Q = importdata('liverExperimentsDataset/latexLiver10_NotEnhanced/latexLiver10_NEN_201909021437509306_Joint_Positions.dat',',');
TAU = importdata('liverExperimentsDataset/latexLiver10_NotEnhanced/latexLiver10_NEN_201909021437508806_Joint_Torques.dat',',');
TAU_MOD = importdata('liverExperimentsDataset/latexLiver10_NotEnhanced/latexLiver10_NEN_201909021437508936_Model_Joint_Torques.dat',',');
F_EXT = importdata('liverExperimentsDataset/latexLiver10_NotEnhanced/latexLiver10_NEN_201909021437507956_Force_Sensor.dat',',');
R_KUKA = importdata('liverExperimentsDataset/latexLiver10_NotEnhanced/latexLiver10_NEN_201909021437508346_KUKA_Residual_Vector.dat',',');
title = 'latexLiver10';
num_transitions = 2;