%Viết một hàm để tìm số nguyên tố lớn nhất trong một mảng.
%Nếu không có số nguyên tố nào, in ra thông báo "Không có số nguyên tố"
function Bai30(a)
ans = -1;
for i = 1 : length(a) 
    if checkPrime(a(1,i)) == 1
        if ans < a(1,i)
            ans = a(1,i);
        end
    end
end
if ans == -1
    fprintf('Không có số nguyên tố nào!');
else
    fprintf('Số nguyên tố lớn nhất là: %d',  ans);
end
end