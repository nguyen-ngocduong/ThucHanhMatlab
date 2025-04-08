% Định nghĩa tham số
a = 1;
r = 1;
h = 0.25;
x0 = 0;
y0 = 0;
x_end = 2;

% Định nghĩa phương trình vi phân dưới dạng hàm
f = @(x, y) r - a * y;

% Gọi hàm Euler_Method
[x, y] = Euler_Method(f, x0, y0, h, x_end);

% Nghiệm giải tích
y_exact = (r / a) * (1 - exp(-a * x));

% Vẽ đồ thị so sánh
hold on;
plot(x, y_exact, 'b-', 'LineWidth', 2);
plot(x, y, 'ro-', 'LineWidth', 1.5);
legend('Nghiệm giải tích', 'Nghiệm Euler');
title('So sánh nghiệm giải tích và nghiệm Euler');
xlabel('Thời gian t');
ylabel('y(t)');
grid on;

% Hiển thị kết quả tại t = 1 và t = 2
idx_t1 = find(x == 1);
idx_t2 = find(x == 2);

fprintf('Tại t = 1:\n');
fprintf('  - Nghiệm Euler: %.6f\n', y(idx_t1));
fprintf('  - Nghiệm giải tích: %.6f\n', y_exact(idx_t1));
fprintf('  - Sai số: %.6f\n\n', abs(y(idx_t1) - y_exact(idx_t1)));

fprintf('Tại t = 2:\n');
fprintf('  - Nghiệm Euler: %.6f\n', y(idx_t2));
fprintf('  - Nghiệm giải tích: %.6f\n', y_exact(idx_t2));
fprintf('  - Sai số: %.6f\n\n', abs(y(idx_t2) - y_exact(idx_t2)));
