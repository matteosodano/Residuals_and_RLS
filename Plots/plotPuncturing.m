function fig = plotPuncturing(time, deltaTime, f, fRES, fRLS, puncturing_event)
fig = figure('Position', get(0, 'Screensize'));
hold on;
box on
plot(time, f, 'LineWidth', 2)
plot(time, fRES, 'r', 'LineWidth', 2);
p = plot(time, fRLS, '--', 'LineWidth', 2);
p.Color = [255 204 0]/255;
plot(puncturing_event*deltaTime, fRES(puncturing_event),'ko', 'LineWidth', 4);
plot(puncturing_event*deltaTime, f(puncturing_event),'ko', 'LineWidth', 4);
ymax = max([fRES, fRLS, f], [], 'all');
ymax = ceil(ymax);
ymin = min([fRES, fRLS, f], [], 'all');
ymin = floor(ymin);
xlim([time(1) time(end)]);
ylim([ymin ymax]);
xlabel('Time [s]', 'FontSize', 10)
ylabel('Force [N]', 'FontSize', 10)
str = sprintf('\npredicted\npuncture');
legend({'$f$','$\hat{f}_{RES}$', '$\hat{f}_{RLS}$', str}, 'Interpreter', 'latex', 'FontSize', 10)
grid on;
set(gca,'FontSize',10)
set(gca,'linewidth',2)

