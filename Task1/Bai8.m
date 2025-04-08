clc; clear; close all;
%Tạo ma trận A (3x5) có giá trị nằm trong khoảng từ -2 đến 12 trích xuất ra:
%i) các phần tử lớn hơn a và gán vào B
%ii) các phần tử nhỏ hơn hoặc bằng b và gán vào C
A = randi([-2, 12], 3, 5);
disp(A);
% B chứa các phần tử lớn hơn 1
B = A(A > 1);
disp(transpose(B));
% Các phần tử nhỏ hơn hoặc bằng 2
disp(transpose(A(A <= 2)));