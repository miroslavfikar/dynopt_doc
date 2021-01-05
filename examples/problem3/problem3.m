clear all; close all; clc;
options = sdpoptionset('LargeScale','on','Display','iter','TolFun',1e-7,...
                       'TolCon',1e-7,'TolX',1e-7,...
                       'MaxFunEvals',1e5,'MaxIter',1e5,'Algorithm','sqp',...
                       'NLPsolver','fmincon');

optimparam.optvar = 3;
optimparam.objtype = [];
optimparam.ncolx = 6; 
optimparam.ncolu = 2; 
optimparam.li = ones(7,1)*(1/7);
optimparam.ui = zeros(1,7);
optimparam.tf = 1;
optimparam.par = []; 
optimparam.bdu = []; 
optimparam.bdx = []; 
optimparam.bdp = [];
optimparam.objfun  = @objfun;
optimparam.confun  = @confun;
optimparam.process = @process;
optimparam.options = options;
%optimparam.adoptions = adoptionset('jacuser',true);

[optimout,optimparam] = dynopt(optimparam);
[tplot,uplot,xplot]   = profiles(optimout,optimparam,50);
[tp,cp,ceqp] = constraints(optimout,optimparam,50);

