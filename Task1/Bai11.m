%Tạo ma trận A=[1 2; 3 4], mở rộng ma trận A thành ma trận (b+4) hàng và (b+4)
%cột với phần tử ở hàng thứ (b+4) cột (b+4) có giá trị bằng 10 còn lại các giá trị còn lại
%bằng a
clc; clear; close all;
A = [1 2; 3 4];
%Mở rộng ma trận A thành 6x6
B = randi([1,1], 2, 7);
A = [A B];
disp(A);
C = randi([1,1], 7, 9);
A=[A ;C];
disp(A);
A(9,9) = 10;
A