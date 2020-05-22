function fig = plotQD(time, QD, n)
fig = figure('Position', get(0, 'Screensize'));
box on
for i=1:n
    subplot(4, 2, i);
    plot(time, QD(:, i), 'LineWidth', 2);
    caption = sprintf('Joint %i', i);
    title(caption)
    xlabel('Time [s]','FontSize',10)
    ylabel('Velocity [rad/s]','FontSize',10)
    
    legend({'$\dot{q}$', '$r$'}, 'Interpreter', 'latex', 'FontSize', 10)
    grid on
    xlim([0, time(end)])
    ymax = max([QD(:, i)]);
    ymin = min([QD(:, i)]);
    delta = ymax - ymin;
    percentage = 0.2;
    ylim([ymin - delta*percentage, ymax + delta*percentage])
    
    ax = gca;
    if i == 2
        ax.YRuler.Exponent = -2;
    end
    if i == 4
        ax.YRuler.Exponent = -3;
    end
    if i == 6
        ax.YRuler.Exponent = -3;
    end
    set(gca,'FontSize',10)
    set(gca,'linewidth',2)
end
