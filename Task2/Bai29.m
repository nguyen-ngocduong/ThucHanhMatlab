%Vẽ chuỗi (b+2) xung hàm e^x^2 có chu kỳ T
function Bai29(T, f, b)
t = 0 : T/999 : T;
y = f(t);
tc = [];
x = [];
for i = 1 : (b+2)
    tc = [tc t + (i-1)*T];
    x = [x y];
end
plot(tc, x, 'LineWidth',2);
xlabel('Time');
ylabel('Bien do');
title('Chuoi 4 xung ham f(x)');
end