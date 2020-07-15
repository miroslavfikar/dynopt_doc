options = sdpoptionset('LargeScale','on','Display','iter','TolFun',1e-7,...
                       'TolCon',1e-7,'TolX',1e-7,...
                       'MaxFunEvals',1e5,'MaxIter',2000,'Algorithm','sqp',...
                       'NLPsolver','fmincon');
optimparam.optvar = 3;
optimparam.objtype = [];
optimparam.ncolx = 5;
optimparam.ncolu = 2;
optimparam.li = ones(20,1)*1/2;
optimparam.tf = [];
optimparam.ui = zeros(1,20);
optimparam.par = [];
optimparam.bdu = [0 50];
optimparam.bdx = [];
optimparam.bdp = [];
optimparam.objfun  = @objfun;
optimparam.confun  = @confun;
optimparam.process = @process;
optimparam.options = options;
[optimout, optimparam] = dynopt(optimparam);
[tplot,uplot,xplot]    = profiles(optimout,optimparam,50);
% [tp,cp,ceqp] = constraints(optimout,optimparam,50);

%% plot
figure
subplot(2,1,1)
plot(tplot,xplot)
legend('x1','x2','x3','x4')
subplot(2,1,2)
plot(tplot,uplot)
%%
figure
hold on
lines = {'k','b','r','g'};
for i = 1:4
    plot(tplot,xplot(:,i),lines{i})
end
legend('x_1','x_2','x_3','x_4','Orientation','horizontal')
xlabel('time')
ylabel('x_1, x_2, x_3, x_4')
ylim([-1 35])
box on
set(gca, 'FontSize', 12)
print -depsc 'fermentor_states_dynopt.eps'
hold off

figure
plot(tplot,uplot,'k')
ylim([-1 51])
xlabel('time')
ylabel('u')
set(gca, 'FontSize', 12)
box on
print -depsc 'fermentor_control_dynopt.eps'
