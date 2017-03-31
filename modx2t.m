function [ omg_mod ] = modx2t( omg )
%   Performs the mod with x^2t
    global t;
    while length(omg) > 2*t
        omg(length(omg)) = [];
    end
    
    while length(omg) > 1 && omg(length(omg)) == -1
        omg(length(omg)) = [];
    end

    omg_mod = omg;
end

