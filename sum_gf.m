function [ s ] = sum_gf( x, y )
%   Performs the sum of the elements
%   over the GF.
    global m alpha;
    b = zeros(1, m);
    for j = 1: m
        b(j) = xor(alpha(x+1,j), alpha(y+1,j));
    end
    s = getPower(b);
end

