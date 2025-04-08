%Tính tích phân sau theo phương pháp điểm giữa với N*100 điểm:
% tích phân từ 1 đến 2 của exp(x)*arctan(x^2)/cos(x) = f(x) 
% Phương pháp: chuyển thành h*tổng từ 0 đến N-1 của f(mid_point)
function I =Midpoint_Rule(f,a,b,N)
h = (b-a)/2;
N = N*100;
I = 0;
for i = 0 : N-1
    mid_point = a + (i + 0.5) * h;
    I = I + f(mid_point);
end
I = I*h;
fprintf("Giá trị tích phân xấp xỉ: %.5f\n", I);
end