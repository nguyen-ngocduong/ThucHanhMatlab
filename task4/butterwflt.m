function y = butterwflt(x,n,B,Ts)
% Hàm bộ lọc Butterworth
% B - độ rộng dải thông (bandwidth)
% Ts - thời gian lấy mẫu
% n - bậc của bộ lọc
% y - tín hiệu đầu ra đã lọc

Ns = length(x);                   % Số mẫu tín hiệu
% Miền tần số
f = [0:Ns/2-1, -Ns/2:-1] / (Ns*Ts);  % Tạo vector tần số
Xf = fft(x);                        % Biến đổi Fourier của tín hiệu đầu vào
Hf = 1 ./ (1 + (f./B).^(2*n));      % Hàm truyền bộ lọc Butterworth - thay doi theo de
Yf = Xf .* Hf;                      % Nhân phổ để lọc
% Chuyển ngược về miền thời gian
y = ifft(Yf);
end
% Run code
y = butterwflt(x,1,0.2,1);
[f,Xf] = taodangpho(t,y); %(Từ hàm 15)
semilogy(f,Xf); 
grid;
figure(2);
plot(t,x,t,y); 
grid;