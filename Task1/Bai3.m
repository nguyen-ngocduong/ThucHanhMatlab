%Tạo ma trận A có kích thước là (axb) sau đó tạo ma trận B là đường chéo của ma
%trận A 
clc; clear; close all;

A = randi([0, 10], 1, 2);
disp('Ma trận A:');
disp(A);

tmp = diag(A);
disp('Ma trận đường chéo từ A:');
disp(tmp);

B = [];

for i = 1:2
    B = [B tmp(i,i)];
end

disp('Ma trận B:');
disp(B);
