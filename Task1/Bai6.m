% Tạo ma trận A là ma trận đơn vị có kích thước là a và ma trận B có kích thước phù
%hợp và có giá trị toàn b, sau đó ghép 2 ma trận đó với nhau
clc; clear; close all;
%Giả sử a = 5, b = 2
A = eye(5,5);
disp(A);
B = randi([2, 2], 1, 5);
disp(B);
C = [A; B];
disp(C);