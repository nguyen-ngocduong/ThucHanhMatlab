%Tạo ma trận A có kích thước (axb) có giá trị tăng từ 1 đến axb sau đó tính tổng và
%trung bình của các phần tử trong ma trận 

% a = 1, b = 10
clear; clc; close all;
A = [];
for i = 1:10
    A = [A i];
end

res = sum(A)/size(A, 2);
res