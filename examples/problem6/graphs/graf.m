load optimprofiles tplot uplot xplot

% ploting
%..........................................................................
plot(tplot,uplot,'k')
title('')
xlabel('time')
ylabel('u')
axis tight 
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc u_5212a.eps
pause

plot(tplot,xplot(:,1),'b:',tplot,xplot(:,2),'r--')
title('')
xlabel('time')
ylabel('x_1, x_2')
legend('x_1','x_2','Location','northeast')
axis tight 
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc x12_5212a.eps
pause
close
%..........................................................................