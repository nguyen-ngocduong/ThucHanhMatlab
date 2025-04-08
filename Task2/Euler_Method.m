%Giải phương trình vi phân sau theo phương pháp euler và euler biến đổi trên đoạn [0, max(a,b)] :
%y'= ax^2 − by với y(0)=1, h=0.0a
% f  : hàm số f(x,y) trong phương trình vi phân dy/dx = f(x,y)
    % x0 : giá trị ban đầu của x
    % y0 : giá trị ban đầu của y
    % h  : bước nhảy (step size)
    % x_end : điểm cuối của x
function [x,y] = Euler_Method(f,x0,y0,h,x_end)
%khởi tạo
x = x0 : h : x_end;
y = zeros(size(x));
y(1) = y0;
for i = 1:length(x)-1
    y(i+1) = y(i) + h * f(x(i), y(i));
end
%plot
plot(x,y,'r', 'LineWidth', 2);
xlabel('X');
ylabel('Y');
title('Phương pháp Euler');
legend('Giá trị gần đúng');
end