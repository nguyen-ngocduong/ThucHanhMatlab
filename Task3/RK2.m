function [xSol,ySol] = RK2(Fdot, x0, y0, h, xStop)
x = x0;
y=y0;
xSol = x;
ySol = y;
while x < xStop
    K1 = h*Fdot(x,y);
    K2 = h*Fdot(x+h/2, y+K1/2);
    y = y + K2;
    x = x+h;
    xSol(end + 1) = x;
    ySol(end + 1, :)= y;
end
end