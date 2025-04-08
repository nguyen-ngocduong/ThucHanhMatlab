%Tạo ma trận A có kích thước là 9x10, hãy tạo ma trận B có kích thước 5x18 từ ma
%trận A
clc; clear; close all;
A = randi([1,10], 9 , 10);
disp(A);
B = reshape(A, [5,18]);
disp(B);