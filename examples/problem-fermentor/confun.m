function [c,ceq] = confun(t,x,flag,u,p)
if flag == 0
    c = [];
    ceq = [u];
elseif flag == 1
    c = [x(1)-40;-x(1);x(2)-50;-x(2);x(3)-25;-x(3);x(4)-10;-x(4)];
    ceq = [];
elseif flag == 2
    c = [];
    ceq = [];
end
end