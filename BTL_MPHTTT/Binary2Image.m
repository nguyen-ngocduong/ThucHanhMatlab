% Bước 3: Chuyển chuỗi nhị phân thành ảnh
function [reconstructed_img] = Binary2Image(filename)
    [gray_img, m, n] = read_image(filename);
    [binary_matrix] = Convert_Binary(filename);
    reconstructed_img = zeros(m, n); % Khởi tạo ma trận ảnh tái tạo
    for i = 1:m
        for j = 1:n
            % Lấy 8 bit từ chuỗi nhị phân
            idx = ((i-1)*n + (j-1))*8 + 1;
            pixel_bits = binary_matrix(idx:idx+7);
            % Chuyển 8 bit thành số thập phân
            pixel_value = bi2de(pixel_bits', 'left-msb');
            reconstructed_img(i, j) = pixel_value;
        end
    end
    reconstructed_img = uint8(reconstructed_img); % Chuyển về kiểu uint8
    % Hiển thị ảnh gốc và ảnh tái tạo
    figure;
    subplot(1, 2, 1); imshow(gray_img); title('Ảnh gốc (xám)');
    subplot(1, 2, 2); imshow(reconstructed_img); title('Ảnh tái tạo');
    
    % Lưu ảnh tái tạo (nếu cần)
    imwrite(reconstructed_img, 'reconstructed_VinhHaLong.jpg');
end