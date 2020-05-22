function fig = plotForceDisp(fRES, P, puncturing_event)
fig = figure('Position', get(0, 'Screensize'));
hold on
box on
plot(P, fRES(:,3), 'r', 'LineWidth', 2);
ymax = max(fRES(:,3), [], 'all');
ymax = ceil(ymax);
ymin = min(fRES(:,3), [], 'all');
ymin = floor(ymin);
ylim([ymin ymax+0.5]);

xlabel('Displacement [m]', 'FontSize', 10)
ylabel('Force [N]', 'FontSize', 10)
plot(P(puncturing_event), fRES(puncturing_event,3),'ko', 'LineWidth', 4);
str = sprintf('\npredicted\npuncture');
legend({'$\hat{f}_{RES}$', str}, 'Interpreter', 'latex', 'FontSize', 10)

grid on;

set(gca,'FontSize',10)
set(gca,'linewidth',2)