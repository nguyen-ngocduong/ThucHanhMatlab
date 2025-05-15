clc; clear; close all;
filename = 'VinhHaLong.jpg';
%Đọc ảnh
[img,gray_img,m,n] = read_image(filename);
%Chuyển thành nhị phân
[binary_matrix] = Convert_Binary(filename);
%Chuyển từ nhị phân thành ảnh 
[reconstructed_img] = Binary2Image(filename);
% Lấy thông số ảnh
info = imfinfo(filename);
disp('Thông tin ảnh:');
disp(['Kích thước: ', num2str(info.Height), ' x ', num2str(info.Width)]);
disp(['Định dạng: ', info.Format]);
disp(['Độ dài chuỗi bit: ', num2str(m * n * 8), ' bit']);
