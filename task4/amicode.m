function [t, y, code] = amicode(d, R, Ns, type)
% Mã hóa AMI (Alternate Mark Inversion)
% d - dữ liệu nhị phân (0/1), R - tốc độ bit, Ns - số mẫu, type - 'NRZ' hoặc 'RZ'
if nargin < 4, type = 'NRZ'; end
Tb = 1 / R; Nb = length(d);           % Thời gian bit, số bit
ts = (Nb*Tb) / (Ns-1);                % Chu kỳ lấy mẫu
t = 0:ts:(Nb*Tb);                     % Vector thời gian
y = zeros(size(t)); code = zeros(1,Nb);

s = 1;
for k = 1:Nb
    if d(k)==1
        s = s + 1;
        code(k) = (-1)^(s);           % Luân phiên giữa +1 và -1
    end
end

for k = 1:Nb
    i1 = round((k-1)*Tb/ts)+1;
    i2 = round(k*Tb/ts);
    switch lower(type)
        case 'nrz'
            y(i1:i2) = code(k);
        case 'rz'
            m = round((i1+i2)/2);
            y(i1:m) = code(k);
    end
end
end