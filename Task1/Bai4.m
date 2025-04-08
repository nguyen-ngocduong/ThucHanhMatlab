%Tạo ma trận A có kích thước là (axb) sau đó tìm giá trị lớn nhất và nhỏ nhất của ma
%trận
clear; clc; close all;
A = randi([1,10], 1, 2);
disp(A);
MIN = min(min(A));
MAX = max(max(A));
sprintf('Giá trị nhỏ nhất của A: %.2f', MIN, ' Giá trị lớn nhất A: %.2f', MAX);