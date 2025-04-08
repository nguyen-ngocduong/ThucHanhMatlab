function [x,y] = Euler_Method(f,x0,y0,h,x_end)
%Khởi tạo tham số
x = x0 : h : x_end;
y = zeros(size(x));
y(1) =0;
for i = 1 : length(x) - 1
    y(i+1) = y(i) + h * f(x(i),y(i));
end
%plot()
plot(x,y,'r','LineWidth',2);
xlabel('X');
ylabel('Y');
title('Phương pháp Euler');
legend('Nghiệm làm tròn');
end