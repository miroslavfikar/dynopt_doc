function [f,Df] = objfun(t,x,u,p,xm)

% objective function
f = []; % J

% gradient of the objective function
Df.t = []; % dJ/dt
Df.x = []; % dJ/dx
Df.u = []; % dJ/du
Df.p = []; % dJ/dp
