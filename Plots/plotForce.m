function fig = plotForce(time, f, fRES)
fig = figure('Position', get(0, 'Screensize'));
box on

plot(time, f(:,1), 'g', time, fRES(:,1)*0.4, 'm', time, f(:,2), 'c', time, fRES(:,2), 'y', 'LineWidth', 1);
hold on
plot(time, f(:,3), 'Color', [0, 0.4470, 0.7410], 'LineWidth', 2);
hold on
plot(time, fRES(:,3), 'r', 'LineWidth', 2);

xlabel('Time [s]', 'FontSize', 10)
ylabel('Force [N]', 'FontSize', 10)

legend({'$F_{x}$', '$\hat{F}_{RES, x}$', '$F_{y}$', '$\hat{F}_{RES, y}$', ...
        '$F_{z}$', '$\hat{F}_{RES, z}$'}, 'Interpreter', 'latex', 'FontSize', 10)

grid on
xlim([0, time(end)])
ymax = max([f; fRES]);
ymax = max(ymax);
ymin = min([f; fRES]);
ymin = min(ymin);
delta = ymax - ymin;
percentage = 0.2;
ylim([ymin - delta*percentage, ymax + delta*percentage])

set(gca,'FontSize',10)
set(gca,'linewidth',2)