%Giải hệ phương trình sau a = 1, b = 2, c = 1;
clc; clear; close all;
A = [1 -2 -1; 1 2 -1; 1 1 -3];
disp(A);
B = [10; 5; 2];
disp(B);
X = A\B;
fprintf('Nghiệm của hệ phương trình: \n');
disp(X)
