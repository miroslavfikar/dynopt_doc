function sys = process(t,x,flag,u,p)

  if flag == 0 % right sides of differential equations 
    sys = [];
  elseif flag == 5 % initial conditions 
    sys = [];
  else
    error(['unhandled flag = ',num2str(flag)]); 
  end
end