[time,state,control] = tuxprint(x,3,2,10,4,8,1000);

ntimes = 20;
[tplot,uplot,xplot] = profiles(optimout,optimparam,ntimes);

% ploting
%..........................................................................
plot(time,controls(:,1),'k-')
title('')
xlabel('time')
ylabel('u_1')
axis tight
% axis([0 30 -2.05 1.05])
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc u1_3210.eps
pause

plot(time,controls(:,2),'k-')
title('')
xlabel('time')
ylabel('u_2')
axis tight
% axis([0 30 -2.05 1.05])
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc u2_3210.eps
pause

plot(time,controls(:,3),'k-')
title('')
xlabel('time')
ylabel('u_3')
axis tight
% axis([0 30 -2.05 1.05])
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc u3_3210.eps
pause

plot(time,controls(:,4),'k-')
title('')
xlabel('time')
ylabel('u_4')
axis tight
% axis([0 30 -2.05 1.05])
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc u4_3210.eps
pause

plot(time,states(:,1),'k-',time,states(:,2),'b-',time,states(:,3),'r-',time,states(:,4),'g-',time,states(:,5),'c-',time,states(:,6),'y-',time,states(:,7),'m-')
title('')
xlabel('time')
ylabel('x_1, x_2, x_3, x_4, x_5, x_6, x_7')
legend('x_1','x_2','x_3','x_4','x_5','x_6','x_7',1)
axis tight
% axis([0 30 0 20.05])
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc x17_3210.eps
pause

plot(time,states(:,8),'k-')
title('')
xlabel('time')
ylabel('x_8')
axis tight
% axis([0 30 0 20.05])
set(1,'PaperUnits','centimeters')
set(1,'PaperPosition',[3 10 11 8.25])

print -depsc x8_3210.eps
pause
close
%..........................................................................