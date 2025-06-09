% tích phân từ 1 đến 2 của exp(x)*arctan(x^2)/cos(x) = f(x)
% Phương pháp: chuyển thành h*tổng từ 0 đến N-1 của f(mid_point)
function res =  Mid_point(f,a,b,N)
N = N*100;
h = (b-a)/N;
res = 0;
for i = 0 : N-1
    mid_point = a + (i+0.5)*h;
    res = res + f(mid_point);
end
res = res * h;
disp(res);
end