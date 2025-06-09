%VD chạy AMI
d = [1 0 1 1 0 0 1];   % Chuỗi nhị phân
R = 1;                 % Tốc độ bit
Ns = 1000;             % Số lượng mẫu
type = 'rz';           % Loại mã hóa

[t, y, code] = amicode(d, R, Ns, type);

% Vẽ tín hiệu
plot(t, y, 'LineWidth', 2);
ylim([-1.5 1.5]);
xlabel('Thời gian (s)');
ylabel('Tín hiệu AMI');
title('Mã hóa đường truyền AMI (RZ)');
grid on;
