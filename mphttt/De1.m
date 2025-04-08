clc; clear; close all;
%câu 1:
A = randi([0 1], 1, 256);
B = reshape(A, 16,16);
B([2 3], :) = [];
C = size(B);
D = bi2de(B);
tb = mean(D);
disp(tb);
t = sum(D);
disp(t);
mask = find(D);
disp(mask); % mask là một vector cột chứa các số nguyên dương (indices) chỉ định vị trí của phần tử khác 0 trong D
E = D(mask);
disp(E);
k = length(E);
disp(k);
%Cau 2:
F = [2 3 -1; -1 4 5; 3 -2 4];
G = [10; -3; 7];
%Giai he phuong trinh
X = F\G;
disp(X);
%Cau 3: Ve do thi
x = -5 : 0.2 : 5;
y = 3*x.^4 - 4*x - 5;
x_point = 0.6934;
y_point = 3*x_point^4 - 4*x_point - 5;
figure;
plot(x,y, 'r', 'LineWidth',2); hold on;
plot(x_point, y_point, 'Marker', '+', 'Color', 'b', 'LineWidth', 2); % Thêm màu và độ dày
% Vẽ trục x và trục y tại gốc tọa độ (0,0)
xline(0, 'k-', 'LineWidth', 1); % Trục x
yline(0, 'k-', 'LineWidth', 1); % Trục y
xlabel('Truc x');
ylabel('Truc y');
title('Do thi ham so y = f(x)');
%Bai4
thang = input('Nhap thang: ');
nam = input('Nhap nam: ');
year(thang, nam);