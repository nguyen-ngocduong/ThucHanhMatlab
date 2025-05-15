function [binary_matrix] = Convert_Binary(filename)
    [gray_img,m,n] = read_image(filename);
    gray_img_double = double(gray_img);
    binary_matrix = zeros(m * n * 8, 1);
    for i = 1:m
        for j = 1:n
            % Chuyển mỗi pixel thành 8 bit
            pixel_bits = de2bi(gray_img_double(i, j), 8, 'left-msb');
            % Gán vào chuỗi nhị phân
            idx = ((i-1)*n + (j-1))*8 + 1;
            binary_matrix(idx:idx+7) = pixel_bits;
        end
    end
end