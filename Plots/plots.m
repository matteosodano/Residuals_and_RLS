fig = plotTau(time, -TAU+TAU_PREDICT,R,R_KUKA, n);
saveas(fig, strcat('Figure/', title, 'tau'), 'png');
saveas(fig, strcat('Figure/', title, 'tau'), 'epsc');

fig = plotErrorRes(time, -TAU+TAU_PREDICT,R,R_KUKA, n);
saveas(fig, strcat('Figure/', title, 'error'), 'png');
saveas(fig, strcat('Figure/', title, 'error'), 'epsc');

fig = plotForce(time, -F_EXT, F_EXT_RECON);
saveas(fig, strcat('Figure/', title, 'force'), 'png');
saveas(fig, strcat('Figure/', title, 'force'), 'epsc');

fig = plotForceDisp(F_EXT_RECON, P, puncturing_event);
saveas(fig, strcat('Figure/', title, 'forceDisp'), 'png');
saveas(fig, strcat('Figure/', title, 'forceDisp'), 'epsc');

fig = plotPuncturing(time, deltaTime, -F_EXT(:, 3), F_EXT_RECON(:, 3), F_hat, puncturing_event);
saveas(fig, strcat('Figure/', title, 'puncturing'), 'png');
saveas(fig, strcat('Figure/', title, 'puncturing'), 'epsc');

fig = plotK(time,deltaTime, Theta, Theta2, flag, P);
saveas(fig, strcat('Figure/', title, 'K'), 'png');
saveas(fig, strcat('Figure/', title, 'K'), 'epsc');

fig = plotB(time,deltaTime, Theta, Theta2, flag, P);
saveas(fig, strcat('Figure/', title, 'B'), 'png');
saveas(fig, strcat('Figure/', title, 'B'), 'epsc');

fig = plotQD(time, QD, n);
saveas(fig, strcat('Figure/', title, 'QD'), 'png');
saveas(fig, strcat('Figure/', title, 'QD'), 'epsc');