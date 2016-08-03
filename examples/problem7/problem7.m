options = optimset('LargeScale','off','Display','iter');
options = optimset(options,'GradObj','on','GradConstr','on');
% options = optimset(options,'DerivativeCheck','on');
% options = optimset(options,'Diagnostic','on');
options = optimset(options,'MaxFunEvals',1e5);
options = optimset(options,'MaxIter',1e5);
options = optimset(options,'TolFun',1e-5);
options = optimset(options,'TolCon',1e-5);
options = optimset(options,'TolX',1e-5);

% dynopt_v2.1.1
% -21.5812 400 2033 597.47 without DerivativeCheck
% [x,fval,exitflag,output]=dynopt(1,0,2,2,[0.02;0.02;0.02;0.02;0.02;0.02;0.02;0.02;0.02;0.02],[0.2],[10 10 10 10 10 10 10 10 10 10;3 3 3 3 3 3 3 3 3 3;2 2 2 2 2 2 2 2 2 2;10 10 10 10 10 10 10 10 10 10],[0 20;0 6;0 4;0 20],[],'objfun',[],'process',options);

% -21.7877 1423 9472 12683 without DerivativeCheck
% [x,fval,exitflag,output]=dynopt(1,0,3,2,[0.02;0.02;0.02;0.02;0.02;0.02;0.02;0.02;0.02;0.02],[0.2],[10 10 10 10 10 10 10 10 10 10;3 3 3 3 3 3 3 3 3 3;2 2 2 2 2 2 2 2 2 2;10 10 10 10 10 10 10 10 10 10],[0 20;0 6;0 4;0 20],[],'objfun',[],'process',options);

% -21.8003 1421 1030 21301 without DerivativeCheck
% [x,fval,exitflag,output]=dynopt(1,0,4,2,[0.02;0.02;0.02;0.02;0.02;0.02;0.02;0.02;0.02;0.02],[0.2],[10 10 10 10 10 10 10 10 10 10;3 3 3 3 3 3 3 3 3 3;2 2 2 2 2 2 2 2 2 2;10 10 10 10 10 10 10 10 10 10],[0 20;0 6;0 4;0 20],[],'objfun',[],'process',options);


% dynopt_v4.1.0
optimparam.optvar = 3; 
optimparam.objtype = []; 
optimparam.ncolx = 3; 
optimparam.ncolu = 2; 
optimparam.li = ones(10,1)*(0.2/10); 
optimparam.tf = 0.2;
optimparam.ui = [ones(1,10)*10;ones(1,10)*3;ones(1,10)*2;ones(1,10)*10];
optimparam.par = []; 
optimparam.bdu = [0 20;0 6;0 4;0 20]; optimparam.bdx = []; optimparam.bdp =[];
optimparam.objfun = @objfun; optimparam.confun = @confun; optimparam.process = @process;
optimparam.options = options;

[optimout,optimparam]=dynopt(optimparam)
save optimresults optimout optimparam
[tplot,uplot,xplot] = profiles(optimout,optimparam,50);
save optimprofiles tplot uplot xplot 
