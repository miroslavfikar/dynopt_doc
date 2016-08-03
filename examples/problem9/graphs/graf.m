load optimprofiles tplot uplot xplot

% ploting
%..........................................................................
plot(tplot,uplot,'k')
v=axis;
axis([v(1) v(2) -0.01 1.01])
title('')
xlabel('time [h]')
ylabel('\alpha [-]')
set(gcf,'PaperUnits','centimeters')
set(gcf,'PaperPosition',[0 0 11 8.25])
print -depsc2 a-alpha.eps
figure

plot(tplot,xplot(:,1),'b:',tplot,xplot(:,2),'r--')
title('')
xlabel('time [h]')
ylabel('x_1, x_2 [mol m^{-3}]')
legend('x_1','x_2', 'Location','Best')
axis tight 
set(gcf,'PaperUnits','centimeters')
set(gcf,'PaperPosition',[0 0 11 8.25])
print -depsc2 a-x12.eps
figure

plot(tplot,xplot(:,3),'k-')
title('')
xlabel('time [h]')
ylabel('x_3 [m^3]')
v=axis;
axis([v(1) v(2) 0.0098 v(4)])
set(gcf,'PaperUnits','centimeters')
set(gcf,'PaperPosition',[0 0 11 8.25])
print -depsc2 a-x3.eps


%..........................................................................