load optimprofiles tplot uplot xplot
% control input
close all
figure
plot(tplot,uplot,'k')
xlabel('time [s]')
ylabel(['u [K]'])
set(gca,'FontSize',13)
box on
% control output
figure
plot(tplot,xplot(:,1),'c')
hold on
plot(tplot,xplot(:,2),'b:')
plot(tplot,xplot(:,3),'r--')
box on
set(gca,'FontSize',13)
xlabel('time [s]')
ylabel('x_1, x_2, x_3')
legend('x_1','x_2','x_3')

print('-f1','u_denbigh','-depsc')
print('-f2','x_denbigh','-depsc')