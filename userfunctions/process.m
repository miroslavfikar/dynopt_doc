function sys = process(t,x,flag,u,p)

switch flag
    case 0 % f(x,u,p,t)
        sys = [];
    case 1 % df/dx
        sys = [];
    case 2 % df/du
        sys = [];
    case 3 % df/dp
        sys = [];
    case 4 % df/dt
        sys = [];
    case 5 % x0
        sys = [];
    case 6 % dx0/dp
        sys = [];
    case 7 % M
        sys = [];
    case 8 % unused flag 
        sys = []; 
    otherwise
        error(['unhandled flag = ',num2str(flag)]); 
end