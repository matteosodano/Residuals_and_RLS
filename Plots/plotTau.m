function fig = plotTau(time, T, R, R_KUKA, n)
fig = figure('Position', get(0, 'Screensize'));
box on
for i=1:n
    subplot(4, 2, i );
    
    % set size of subplot to fit all image
    ax = gca;
    outerpos = ax.OuterPosition;
    ti = ax.TightInset; 
    left = outerpos(1) + ti(1);
    % -0.025 is to align with the bottom of image, 0.025*(4-ceil(i/2)) is
    % to have rows with same height and to align with top image
    bottom = outerpos(2) + ti(2) + 0.025*(4- ceil(i/2)) - 0.025;
    ax_width = outerpos(3) - ti(1) - ti(3);
    ax_height = outerpos(4) - ti(2) - ti(4);
    % little decrasing of hight to avoid overlapping of titles
    ax.Position = [left bottom ax_width ax_height-0.0325];
    plot(time, T(:, i), time, R(:, i), 'r--', 'LineWidth', 2);
    hold on;
    plot(time, R_KUKA(:, i), 'k-.', 'LineWidth', 1);
    caption = sprintf('Joint %i', i);
    title(caption)
    xlabel('Time [s]','FontSize',20)
    ylabel('Torque [Nm]','FontSize',20)
    
    legend({'$\tau_{c}$', '$r$', '$r_{k}$'}, 'Interpreter', 'latex', 'FontSize', 10)
    grid on
    xlim([0, time(end)])
    ymax = max([T(:, i); R(:, i); R_KUKA(:, i)]);
    ymin = min([T(:, i); R(:, i); R_KUKA(:, i)]);
    delta = ymax - ymin;
    percentage = 0.2;
    ylim([ymin - delta*percentage, ymax + delta*percentage])
    
    set(gca,'FontSize',10)
    set(gca,'linewidth',2)
end
