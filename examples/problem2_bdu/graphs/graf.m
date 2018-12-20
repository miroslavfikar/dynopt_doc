load optimprofiles tplot uplot xplot

% ploting
%..........................................................................
plot(tplot,uplot,'k')
title('')
xlabel('time')
ylabel('u')
axis tight %([0 1 -4 10])
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc u_624bdu.eps
pause

plot(tplot,xplot(:,1),'c-',tplot,xplot(:,2),'b:',tplot,xplot(:,3),'r--')
title('')
xlabel('time')
ylabel('x_1, x_2, x_3')
legend('x_1','x_2','x_3','Location','southeast')
axis tight %([0 1 0 1])
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc x13_624bdu.eps
pause

plot(tplot,xplot(:,4),'k')
title('')
xlabel('time')
ylabel('J')
axis tight %([0 1 0 1])
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc x4_624bdu.eps
pause
close
%..........................................................................