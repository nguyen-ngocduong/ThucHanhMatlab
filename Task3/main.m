clc; clear; close all;
%VD run code
% Định nghĩa hàm đạo hàm f(x, y) = x + y
Fdot = @(x, y) x + y;

% Gọi hàm RK4 đã viết
[xSol, ySol] = RK2(Fdot, 0, 1, 0.1, 1);

% In kết quả
fprintf('  x\t\t y (gần đúng)\n');
fprintf('-------------------------\n');
for i = 1:length(xSol)
    fprintf('%6.2f\t%10.6f\n', xSol(i), ySol(i));
end

% Vẽ đồ thị nghiệm gần đúng
plot(xSol, ySol, 'b-o', 'LineWidth', 2);
xlabel('x');
ylabel('y');
title('Nghiệm gần đúng bằng phương pháp Runge-Kutta bậc 2');
legend('RK2');
grid on;