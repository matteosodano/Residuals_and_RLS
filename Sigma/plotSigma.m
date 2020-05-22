function [fig0, fig1] = plotSigma(S)
sigma0 = S(:, 1);
sigma1 = S(:, 2);

avg0 = mean(sigma0);
avg1 = mean(sigma1);

n = length(sigma0);
vec = [];
for i=1:n
    vec = [vec i];
end


fig0 = figure('Position', get(0, 'Screensize'));
box on
hold on
%plot(vec, sigma0, 'o', 'LineWidth',4);

sz = 40;
scatter(vec,sigma0,sz,'MarkerEdgeColor',[0 0.45 0.74],...
              'MarkerFaceColor',[0 0.45 0.74],...
              'LineWidth',1.5)


yline(avg0, '--r', 'LineWidth',2);
%legend({'$\sigma_{0}$', 'average'}, 'Interpreter', 'latex','FontSize', 30)
xlabel('Simulation', 'FontSize', 30)
ylabel('\sigma_{0} [N]', 'FontSize', 30)
grid on
xlim([0, 11])

M = max(sigma0);
m = min(sigma0);
dis = abs(M - m);
ylim ([m-0.1*dis, M+0.1*dis]);

set(gca,'FontSize',30)
set(gca,'linewidth',2)



fig1 = figure('Position', get(0, 'Screensize'));
box on
hold on

scatter(vec,sigma1,sz,'MarkerEdgeColor',[0 0.45 0.74],...
              'MarkerFaceColor',[0 0.45 0.74],...
              'LineWidth',1.5)


yline(avg1, '--r', 'LineWidth',2);
%legend({'$\sigma_{1}$', 'average'}, 'Interpreter', 'latex','FontSize', 30)
xlabel('Simulation', 'FontSize', 30)
ylabel('\sigma_{1} [N]', 'FontSize', 30)
grid on
xlim([0, 11])

M = max(sigma1);
m = min(sigma1);
dis = abs(M - m);
ylim ([m-0.1*dis, M+0.1*dis]);

set(gca,'FontSize',30)
set(gca,'linewidth',2)


end

