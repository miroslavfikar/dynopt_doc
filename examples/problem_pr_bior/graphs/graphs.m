% control input
close all
figure
plot(tplot,uplot,'k')
xlabel('time [h]')
ylabel(['u [l/h]'])
set(gca,'FontSize',13)
box on
% control output
figure
plot(tplot,xplot)
box on
set(gca,'FontSize',13)
xlabel('time [h]')
ylabel('x_1, x_2, x_3, x_4, x_5')
legend('x_1','x_2','x_3','x_4','x_5')

print('-f1','u','-depsc')
print('-f2','x','-depsc')