function fig = plotB(time,deltaTime, Theta, Theta2, flag, P)
fig = figure('Position', get(0, 'Screensize'));
box on
[~, t_min] = min(P);
hold on
plot(time, Theta2(2:end,2), 'LineWidth',2)
plot(time, Theta(2:end,2), 'r', 'LineWidth',2)
% xline(t_min*deltaTime, '--k','LineWidth',2);
maxB = max([Theta(:, 2);Theta2(:,2)]);
flagB = flag*maxB*0.5;
plot(time, flagB,'k','LineWidth',0.5)
%legend({'$B$ from $f$','$B$ from $\hat{f}_{RES}$', 'Inversion of Motion', 'Flag'}, 'Interpreter', 'latex','FontSize', 10)
legend({'$B$ from $f$','$B$ from $\hat{f}_{RES}$','Flag'}, 'Interpreter', 'latex','FontSize', 10)
xlabel('Time [s]', 'FontSize', 10)
ylabel('Damping Coefficient [Ns/m]', 'FontSize', 10)
grid on
xlim([time(1) time(end)])
hold off
set(gca,'FontSize', 10)
set(gca,'linewidth',2)