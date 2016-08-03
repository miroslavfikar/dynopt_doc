function [c,ceq] = confun(t,x,flag,u,p)

switch flag
    case 0 % constraints in t0
        % constraints
        c = [];
        ceq = [];
        
    case 1 % constraints over interval [t0,tf]
        % constraints
        c = [];
        ceq = [];
        
    case 2 % constraints in tf
        % constraints
        c = [];
        ceq = [];
end