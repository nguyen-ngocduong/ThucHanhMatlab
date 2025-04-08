clc; clear; close all;
%Tạo ma trận A có kích thước 10x11 sau đó thực hiện:
%i) Tạo vector B từ hàng a của ma trận A
%ii) Tạo vector C từ cột b của ma trận A
%iii) Lấy giá trị phần tử tại vị trí (a,b) gán vào biến z

A = randi([0,10], 10, 11);
disp(A);
%i tạo 1 vector B từ hàng 1 của A
B = A(1, :);
disp(B);
%ii) Tạo vector C từ cột b của ma trận A
C = A(:, 2);
disp(C);
%iii) Lấy giá trị phần tử tại vị trí (a,b) gán vào biến z
z = A(1,2);
disp(z);