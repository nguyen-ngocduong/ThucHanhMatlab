clc; clear; close all;

% Khoảng giá trị của x
x = linspace(-5, 5, 1000);
y = 2*x.^2 - 5*x - 6; % Hàm số y = 2x^2 - 5x - 6

% Tìm nghiệm của phương trình 2x^2 - 5x - 6 = 0 (cắt trục hoành)
x_hoanh = roots([2 -5 -6]); % Giải phương trình bậc 2
y_hoanh = zeros(size(x_hoanh)); % Giao điểm với trục hoành

% Tìm giao điểm với trục tung (x = 0)
x_tung = 0;
y_tung = 2*x_tung^2 - 5*x_tung - 6; % Thay x = 0 vào hàm số

% Tính đạo hàm f'(x) = 4x - 5 và tìm cực trị bằng f'(x) = 0
f_derivative = @(x) 4*x - 5;  % Đạo hàm của y = 2x^2 - 5x - 6
critical_x = fzero(f_derivative, 0); % Giải 4x - 5 = 0
critical_y = 2*critical_x^2 - 5*critical_x - 6; % Tính y tại điểm cực trị

% Vẽ đồ thị
figure;
plot(x, y, 'b', 'LineWidth', 2); % Đồ thị hàm số màu xanh
hold on;

% Vẽ các điểm đặc biệt
plot(x_hoanh, y_hoanh, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % Giao với trục hoành
plot(x_tung, y_tung, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');   % Giao với trục tung
plot(critical_x, critical_y, 'go', 'MarkerSize', 8, 'MarkerFaceColor', 'g'); % Điểm cực trị

% Layout đồ thị
grid on;
xlabel('Trục hoành (x)');
ylabel('Trục tung (y)');
title('Đồ thị hàm số y = 2x^2 - 5x - 6');
legend('Đồ thị hàm số', 'Nghiệm của phương trình', 'Giao với trục tung', 'Điểm cực trị');

% Đưa trục tọa độ về giữa
ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';

hold off;
