function [gray_img,m,n] = read_image(filename)
    % Bước 1: Đọc ảnh và chuyển thành ảnh xám
    img = imread(filename); 
    gray_img = rgb2gray(img);
    [m, n] = size(gray_img); 
end