function [ ] = display_polynomial( what, poly )
%   prints a 'pretty' polynomial writing
%   alpha and x powers
    cnt = 0;
    fprintf('\n%s:           ', what);
    for i = 1 : length(poly) - 1;
        fprintf('A^%d*X^%d + ', poly(i), cnt);
        cnt = cnt + 1;
    end
    fprintf('A^%d*X^%d\n', poly(length(poly)), cnt);
end

