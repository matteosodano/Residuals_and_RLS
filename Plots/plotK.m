function fig = plotK(time,deltaTime, Theta, Theta2, flag, P)
fig = figure('Position', get(0, 'Screensize'));
[~, t_min] = min(P);
hold on
box on
plot(time, Theta2(2:end,1), 'LineWidth',2);
plot(time, Theta(2:end,1), 'r', 'LineWidth',2)
%xline(t_min*deltaTime, '--k','LineWidth',2);
maxK = max([Theta(:, 1);Theta2(:,1)]);
flagK = flag*maxK*0.3;
plot(time, flagK,'k','LineWidth',0.5)

%legend({'$K$ from $f$', '$K$ from $\hat{f}_{RES}$','Inversion of Motion', 'Flag'}, 'Interpreter', 'latex','FontSize', 10)
legend({'$K$ from $f$', '$K$ from $\hat{f}_{RES}$', 'Flag'}, 'Interpreter', 'latex','FontSize', 10)
xlabel('Time [s]','FontSize', 10)
ylabel('Elastic Coefficient [N/m]','FontSize', 10)
grid on
xlim([time(1) time(end)])
hold off

set(gca,'FontSize',10)
set(gca,'linewidth',2)