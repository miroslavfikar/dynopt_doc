%[tp,cp,ceqp] = constraints(optimout,optimparam,50);
%[tplot,uplot,xplot] = profiles(optimout,optimparam,50);
%save optimresults optimout optimparam
%save optimprofiles tplot uplot xplot tp cp ceqp
load optimprofiles tplot uplot xplot tp cp ceqp

% ploting
%..........................................................................
plot(tplot,uplot,'k')
title('')
xlabel('time')
ylabel('u')
axis tight 
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc u_627a.eps
pause

plot(tplot,xplot(:,1),'b:',tplot,xplot(:,2),'r--')
title('')
xlabel('time')
ylabel('x_1, x_2')
legend('x_1','x_2','Location','southeast')
axis tight 
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc x12_627a.eps
pause

plot(tplot,xplot(:,3),'k')
title('')
xlabel('time')
ylabel('J')
axis tight 
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc x3_627a.eps
pause

plot(tp,cp,'k-',[0;1],[0;0],'r:')
title('')
xlabel('time')
ylabel('c')
axis([0 1 -2.5 0.5]) 
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc c_627a.eps
pause
close
%..........................................................................