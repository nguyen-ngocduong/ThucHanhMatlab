%Vẽ đồ thị hàm sin(x) và cos(x) trên cùng 1 đồ thị và phân biệt hai hàm số bằng màu
%sắc. Đánh dấu các điểm tròn tại các vị trí là nguyên lần nửa chu kì của tín hiệu. Ghi chú
%trục tung, trục hoành, tên đồ thị và tên đường cong tương ứng
clc; clear; close all;
x = linspace(0, 4*pi, 200);
y1 = sin(x);
y2 = cos(x);
subplot(1,2,1);
plot(x,y1,'r','LineWidth',2); hold on;
plot(x,y2,'b','LineWidth',2);
% ?ánh d?u các ?i?m tròn t?i các v? trí nguyên l?n n?a chu k?
x_points = [pi/2, pi, 3*pi/2, 2*pi, 5*pi/2, 3*pi, 7*pi/2, 4*pi];
y_points_sin = sin(x_points);
y_points_cos = cos(x_points);
plot(x_points, y_points_sin, 'bo', 'MarkerSize', 8, 'MarkerFaceColor', 'b'); % Đánh dấu điểm tròn cho hàm sin(x)
plot(x_points, y_points_cos, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r'); % đánh dấu điểm tròn cho hàm cos(x)
legend('y1 = sin(x)', 'y2 = cos(x)');
xlabel('Trục X');
ylabel('Trục Y');
title("Đồ thị biểu diến hàm sin(x) và cos(x)");