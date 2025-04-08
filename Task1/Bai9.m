clc; clear; close all;
%Tạo ma trận A có kích thước 9x9, sau đó gán phần tử ở hàng a cột b bằng 4. Gán
%tất cả các phần tử trong ma trận có giá trị là 5 bằng giá trị -5
A = randi([1, 6],9 ,9);
disp(A);
A(1,2) = 4; % gán phần tử hàng 1 cột 2
disp(A);
A(A == 5) = -5;
disp(A);
%gán toàn bộ hàng 1 thành 9
A(1, :) = 9;
disp(A);