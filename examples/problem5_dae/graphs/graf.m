load optimprofiles tplot uplot xplot
uplot = 2500./uplot;

% ploting
%..........................................................................
plot(tplot,uplot,'k')
title('')
xlabel('time')
ylabel('u')
axis tight %([0 1 298 398])
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc u_523daea.eps
pause

plot(tplot,xplot(:,1),'b:',tplot,xplot(:,2),'r--')
title('')
xlabel('time')
ylabel('x_1, x_2')
legend('x_1','x_2',4)
axis tight %([0 1 0 1])
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc x12_523daea.eps
pause
close
%..........................................................................