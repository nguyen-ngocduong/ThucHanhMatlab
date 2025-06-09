function [t,y,code] = nrzcode(d,R,Ns,type)
% d - chuỗi dữ liệu
% R - tốc độ truyền dữ liệu (bit rate)
% Ns - số lượng mẫu
% t - vector thời gian đầu ra
% y - vector đầu ra của mẫu xung
% type - kiểu mã hóa (unipolar - 'unipol' hoặc polar – 'pol')

Tb = 1/R;                 % chu kỳ của một bit
Nb = length(d);           % số bit
Timewindow = Nb*Tb;       % khoảng thời gian toàn bộ dữ liệu
ts = Timewindow/(Ns-1);   % khoảng thời gian lấy mẫu
t = 0:ts:Timewindow;      % vector thời gian
y = zeros(size(t));       % khởi tạo vector đầu ra
code = [];                % khởi tạo mảng mã hóa

if nargin <= 3
    type = 'unipol';      % nếu không có đầu vào kiểu mã hóa thì dùng mặc định là 'unipol'
end

for k = 1:Ns
    n = fix(t(k)/Tb) + 1; % xác định bit tương ứng tại thời điểm t(k)
    if n >= Nb
        n = Nb;           % tránh vượt quá số lượng bit
    end
    switch (type)
        case 'unipol'
            y(k) = d(n);             % mã hóa unipolar: 0 → 0, 1 → 1
            code(n) = d(n);         
        case 'pol'
            y(k) = 2*d(n) - 1;       % mã hóa polar: 0 → -1, 1 → 1
            code(n) = 2*d(n) - 1;
    end
end
end
