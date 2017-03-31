function [ pow ] = getPower( b )
%returns the power i, which alpha^i = b;
    global n k m t alpha;
    pow = -1;
    for j = 1 : n
        cnt = 0;
        for r = 1: m
            if b(r) == alpha(j,r) 
                cnt = cnt + 1;
            end
        end
        if cnt == m
            pow = j - 1;
            break;
        end
    end
end

