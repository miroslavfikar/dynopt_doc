clear all; close all; clc;

options = sdpoptionset('LargeScale','on','Display','iter','TolFun',1e-7,...
                       'TolCon',1e-7,'TolX',1e-7,...
                       'MaxFunEvals',1e5,'MaxIter',1e5,'Algorithm','sqp',...
                       'DerivativeCheck','on','NLPsolver','fmincon');
%options.NLPsolver='ipopt';

optimparam.optvar = 3; 
optimparam.objtype = []; 
optimparam.ncolx = 6;
optimparam.ncolu = 2; 
optimparam.li = ones(4,1)*(1/4);
optimparam.tf = 1;
optimparam.ui = ones(1,4)*7; 
optimparam.par = []; 
optimparam.bdu = [-4 10]; 
optimparam.bdu = [-4 9 -4 10 -4 10 -4 10]; 
optimparam.bdx = [];
optimparam.bdp =[];
optimparam.objfun = @objfun;
optimparam.confun = [];
optimparam.process = @process;
optimparam.options = options;
%optimparam.adoptions = adoptionset('jacuser', true);

[optimout,optimparam]=dynopt(optimparam)
save optimresults optimout optimparam
[tplot,uplot,xplot] = profiles(optimout,optimparam,50);
save optimprofiles tplot uplot xplot 
