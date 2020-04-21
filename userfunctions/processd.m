function sys = processd(t,x,flag,u,p)

  if flag == 1 % df/dx
    sys = [];
  elseif flag == 2 % df/du
    sys = [];
  elseif flag == 3 % df/dp
    sys = [];
  elseif flag == 4 % df/dt
    sys = [];
  elseif flag == 6 % dx0/dp
    sys = [];
  else
    sys = [];
  end
end