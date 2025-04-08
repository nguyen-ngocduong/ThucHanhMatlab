clc; clear; close all;
A = randi([0 1],1, 256);
B = reshape(A, 16, 16);
B([2 3], :) = [];
C = size(B);
disp(C);
D = bi2de(B);
tb = mean(D);
disp(tb);
t = sum(D);
disp(t);
ind = (mod(D,2) ~= 0);
disp(ind);
min = min(D(ind));
disp(min);
max = max(D(ind));
disp(max);
%Cau 2
a = 1; b = 2; c = 3;
E = [2*a,  b, -c; c, 2*b, -a; a, c, -3*c];
F = [10; 5; 2];
X = E\F;
disp(X);

%Cau3:
x = -5 : 0.1 : 5;
y = 2 * x.^2 - 5*x - 6;
x_hoanh = [-0.886 3.386];
y_hoanh = 2 * x_hoanh.^2 - 5*x_hoanh - 6;
x_tung = 0;
y_tung = -6;
x_cuc_tri = 1.25;
y_cuc_tri = 2*x_cuc_tri^2 - 5*x_cuc_tri - 6;
%plot
figure;
plot(x,y,'b','LineWidth',2); hold on;
plot(x_hoanh, y_hoanh, 'ro', 'MarkerSize', 8, 'LineWidth', 2);
plot(x_tung, y_tung, 'ro', 'MarkerSize', 8, 'LineWidth', 2);
plot(x_cuc_tri, y_cuc_tri, 'ro', 'MarkerSize',8, 'LineWidth',2);
xline(0, 'k-', 'LineWidth',1);
yline(0, 'k-', 'LineWidth',1);
xlabel('Truc x');
ylabel('Truc y');
title('Do thi ham so y = f(x)');
%Bai4
n = input('Nhap n: ');
fprintf('So fibo thu n la: \n');
res = fibo(n);
disp(res);