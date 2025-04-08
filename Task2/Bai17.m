%Nhập vào tháng và năm, tính số ngày của tháng đó
function days = Bai17(thang, nam)
if(thang <=0 || thang > 12 || nam <= 0)
    fprintf('Bạn nhập sai tháng, năm');
elseif ((mod(nam, 4) == 0 && mod(nam, 100) ~= 0) || mod(nam, 400) == 0) && thang == 2
    days = 29;
else
        switch thang
            case {1, 3, 5, 7, 8, 10, 12}
                days = 31;
            case 2
                days = 28;
            otherwise
                days = 30;
        end
    end
    fprintf('Số ngày của tháng %d năm %d là: %d\n', thang, nam, days);

end