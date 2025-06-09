function [x,y] = Euler_Method(f,x0,y0,h,N)
x = x0 : h : x0 + N*h;
y = zeros(size(x));
y(1) = y0;
for i = 1 : N
    y(i+1) = y(i) + h*f(x(i),y(i));
end
%In ket qua
for i = 1 : N
    fprintf('%0.4f\t %0.4f\n', x(i), y(i));
end
%plot
plot(x,y,'r','LineWidth',2);
xlabel('X');
ylabel('Y');
title('Phuong phap Euler')
end

