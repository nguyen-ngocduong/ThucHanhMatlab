clc; clear; close all;
%Cau1:
A = randi([0 1], 1, 256);
B = reshape(A, 8,32);
disp(size(B));
B([2 3],:) = [];
C = size(B);
disp(C);
B_1 = B;
B_1(:, [2 3]) = [];
C_1 = size(B_1);
disp(C_1);
D = bi2de(B);
disp(D);
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
%Cau2
E = [1 0 -3; -3 -1 4; 1 -5 -1];
F = [8; 3; 7];
%Giai he phuong trinh
X = E\F;
disp(X);
%Cau 3:
t = 0 : 0.05 : 0.5;
y = cos(200*t) + cos(300*t);
t_min = 0 : 0.002 : 0.5;
y_min = cos(200*t_min) + cos(300*t_min);
%Tim cuc dai + cuc tieu
[~, peak_max] = findpeaks(y, 'MinPeakHeight',0.5);
[~, peak_min] = findpeaks(-y, 'MinPeakHeight',0.5);
%plot
figure;
plot(t_min, y_min, 'b', 'LineWidth',2); hold on;
scatter(t_min(peak_max), y_min(peak_max), 100, "filled", 'MarkerEdgeColor','#77AC30', 'MarkerFaceColor','k');
scatter(t_min(peak_min), y_min(peak_min),100, "filled", "MarkerEdgeColor","#77AC30", "MarkerFaceColor", "k");
title('Do thi voi tan so lay mau la t_{min}');
% Vẽ trục x và trục y tại gốc tọa độ (0,0)
xline(0, 'k-', 'LineWidth', 1); % Trục x
yline(0, 'k-', 'LineWidth', 1); % Trục y
xlabel('Thoi gian t(s)');
ylabel('Bien do');
title('Do thi ham so y = f(t)');
grid on;
hold off;

%Cau4
a = input('Nhap so a: ');
b = input('Nhap so b: ');
fprintf('Boi chung nho nhat cua a va b la: \n');
n = BCNN(a,b);
disp(n);