load optimprofiles tplot uplot xplot tp cp ceqp

% ploting
%..........................................................................
plot(tplot,uplot,'k')
title('')
xlabel('t')
ylabel('u')
axis tight 
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc u_4210a.eps
pause

plot(tplot,xplot(:,1),'k',tplot,xplot(:,2),'b')
title('')
xlabel('t')
ylabel('x_1, x_2')
legend('x_1','x_2',4)
axis tight 
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc x12_4210a.eps
pause

plot(tplot,xplot(:,3),'k')
title('')
xlabel('t')
ylabel('J')
axis tight 
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc x3_4210a.eps
pause

plot(tp,cp,'k',[0;1],[0;0],'r')
title('')
xlabel('t')
ylabel('c')
axis([0 1 -2.5 0.5]) 
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc c_4210a.eps
pause
close
%..........................................................................