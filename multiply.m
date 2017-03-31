function [ res ] = multiply( a, b )
%   Performs the multiplication of polynomials
%   a and b, defined in GF(2^m), over the field
    global n alpha;
    deg = length(a) + length(b) + 1;
    res = ones(1, deg) * -1;
    
    for i = 0 : length(b) - 1
        if b(i+1) == -1
            continue;
        end
        for j = 0: length(a) - 1
            if a(j+1) == -1
                 continue;
            end
            
            idx = (i) + (j) + 1;
            cof = a(j+1) + b(i+1);
            
            while cof >= n + 1
                cof = cof - n;
            end
            
            if res(idx) == -1
                res(idx) = cof;
            else
                now = res(idx);
                res(idx) = sum_gf(now, cof);
            end
            
            if res(idx) == n
                res(idx) = 0;
            end
        end
    end
    
    while length(res) > 1 && res(length(res)) == -1
        res(length(res)) = [];
    end
end

