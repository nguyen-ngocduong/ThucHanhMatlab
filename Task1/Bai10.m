%Tạo ma trận A có kích thước 9x9, vecto B có 9 phần tử, sau đó ghép với ma trận A,
%sau đó xóa hàng thứ a, xóa cột thứ b và phần tử axb

clc; clear; close all;
A = randi([1,10], 9,9);
size(A)
B = randi([1,10], 1, 9);
size(B)
A = [A;B];
size(A)
A(1,:) = [];
A(:, 2) = [];
size(A)