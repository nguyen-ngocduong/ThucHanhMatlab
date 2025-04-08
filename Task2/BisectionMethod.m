%Phương pháp chia đôi tìm nghiệm bằng cách liên tục chia đôi đoạn [a,b] và chọn nửa nào có nghiệm, cho đến khi đạt độ chính xác mong muốn.
% hàm gồm 2 điểm x1,x2 1 sai số epsilon và loop
%Lặp đến khi đạt điều kiện dừng: Tính điểm giữa c= a+b / 2 ​.
%Nếu f(c)=0, thì c là nghiệm. 
%Nếu f(a)⋅f(c)<0, thì nghiệm nằm trong khoảng [a,c] → cập nhật b=c.
%Ngược lại, nghiệm nằm trong khoảng [c,b] → cập nhật a=c. Kiểm tra điều kiện dừng: Nếu ∣b−a∣<ε hoặc đạt số lần lặp tối đa, kết thúc thuật toán.

function root = BisectionMethod(f, a, b, e, loop)
    % Kiểm tra điều kiện đầu vào
    if f(a) * f(b) > 0
        root = NaN;
        fprintf('Hàm f(a) và f(b) phải có dấu trái ngược!\n');
        return;
    end

    count = 0; % Đếm số lần lặp

    while (b - a) / 2 > e && count < loop
        c = (a + b) / 2;  % Tính điểm giữa

        if f(c) == 0
            root = c;  % Nếu tìm được nghiệm chính xác
            return;
        elseif f(a) * f(c) < 0
            b = c;  % Cập nhật khoảng [a, c]
        else
            a = c;  % Cập nhật khoảng [c, b]
        end
        
        count = count + 1;
    end

    root = (a + b) / 2;  % Lấy trung bình của khoảng còn lại
    fprintf("Nghiệm gần đúng: %.6f sau %d lần lặp\n", root, count);
end
