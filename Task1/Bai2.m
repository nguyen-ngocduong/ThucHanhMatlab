clc; clear; close all;
%Tạo ma trận A có kích thước là (axb) sau đó chuyển thành B là vecto hàng
%với a = 1, b = 2
A = randi([3 8], 1, 2);
disp(A);
B = reshape(A, 2,1);
disp(B);