sinTraj = [ 0.0046153, 0.035105;
            0.0046945, 0.035327;
            0.0049482, 0.032204;
            0.0048881, 0.035862;
            0.0046584, 0.034306;
            0.0051712, 0.035483;
            0.0040031, 0.033747;
            0.0045894, 0.034497;
            0.0049003, 0.034505;
            0.0052325, 0.038592];
        
[fig0, fig1] = plotSigma(sinTraj); 
saveas(fig0, strcat('Figure/', 'sinTraj', 'sigma0'), 'png');
saveas(fig0, strcat('Figure/', 'sinTraj', 'sigma0'), 'epsc');
saveas(fig1, strcat('Figure/', 'sinTraj', 'sigma1'), 'png');
saveas(fig1, strcat('Figure/', 'sinTraj', 'sigma1'), 'epsc');

sinTrajh = [0.0029650, 0.028930;
            0.0047452, 0.040915;
            0.0049795, 0.044611;
            0.0046926, 0.041144;
            0.0043059, 0.041443;
            0.0049985, 0.043854;
            0.0052288, 0.043966;
            0.0037681, 0.039794;
            0.0056881, 0.039325;
            0.0047249, 0.042621];
        
[fig0, fig1] = plotSigma(sinTrajh); 
saveas(fig0, strcat('Figure/', 'sinTrajh', 'sigma0'), 'png');
saveas(fig0, strcat('Figure/', 'sinTrajh', 'sigma0'), 'epsc');
saveas(fig1, strcat('Figure/', 'sinTrajh', 'sigma1'), 'png');
saveas(fig1, strcat('Figure/', 'sinTrajh', 'sigma1'), 'epsc');

teleop = [  0.0024387, 0.028023;
            0.0055373, 0.047643;
            0.0032395, 0.028768;
            0.0027375, 0.025066;
            0.0051337, 0.029156;
            0.0036432, 0.027339;
            0.0041813, 0.027787;
            0.0055935, 0.032651;
            0.0037775, 0.027542;
            0.0091416, 0.029431];

[fig0, fig1] = plotSigma(teleop); 
saveas(fig0, strcat('Figure/', 'teleop', 'sigma0'), 'png');
saveas(fig0, strcat('Figure/', 'teleop', 'sigma0'), 'epsc');
saveas(fig1, strcat('Figure/', 'teleop', 'sigma1'), 'png');
saveas(fig1, strcat('Figure/', 'teleop', 'sigma1'), 'epsc');

liver = [   0.0055861, 0.022010;
            0.0069661, 0.022689;
            0.0045820, 0.018460;
            0.0073980, 0.022136;
            0.0098290, 0.020487;
            0.0065649, 0.030917;
            0.0047238, 0.016619;
            0.0071802, 0.023967;
            0.0051273, 0.020003;
            0.0075404, 0.023118];
        
[fig0, fig1] = plotSigma(liver); 
saveas(fig0, strcat('Figure/', 'liver', 'sigma0'), 'png');
saveas(fig0, strcat('Figure/', 'liver', 'sigma0'), 'epsc');
saveas(fig1, strcat('Figure/', 'liver', 'sigma1'), 'png');
saveas(fig1, strcat('Figure/', 'liver', 'sigma1'), 'epsc');
