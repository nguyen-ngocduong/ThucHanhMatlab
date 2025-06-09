function [xSol,ySol] = RK4(Fdot,x0,y0,h,xStop)
x = x0;
y = y0;
xSol = x;
ySol = y;
while x < xStop
    K1 = h*Fdot(x,y);
    K2 = h*Fdot(x+h/2, y + K1/2);
    K3 = h*Fdot(x + h/2, y+K2/2);
    K4 = h*Fdot(x+h, y+K3);
    y = y + (K1 + 2*K2 + 2*K3 + K4)/6;
    x=x+h;

    xSol(end + 1) = x;
    ySol(end + 1, :) = y;
end
end

