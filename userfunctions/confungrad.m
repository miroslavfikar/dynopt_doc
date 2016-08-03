function [c,ceq,Dc,Dceq] = confun(t,x,flag,u,p)

switch flag
    case 0 % constraints in t0
        % constraints
        c = [];
        ceq = [];
        
        % gradient the calculus
        if nargout == 4
            Dc.t = [];
            Dc.x = [];
            Dc.u = [];
            Dc.p = [];
            Dceq.t = [];
            Dceq.x = [];
            Dceq.u = [];
            Dceq.p = [];
        end
    case 1 % constraints over interval [t0,tf]
        % constraints
        c = [];
        ceq = [];
        
        % gradient calculus
        if nargout == 4
            Dc.t = [];
            Dc.x = [];
            Dc.u = [];
            Dc.p = [];
            Dceq.t = [];
            Dceq.x = [];
            Dceq.u = [];
            Dceq.p = [];
        end
    case 2 % constraints in tf
        % constraints
        c = [];
        ceq = [];
        
        % gradient calculus   
        if nargout == 4
            Dc.t = [];
            Dc.x = [];
            Dc.u = [];
            Dc.p = [];
            Dceq.t = [];
            Dceq.x = [];
            Dceq.u = [];
            Dceq.p = [];
        end
end