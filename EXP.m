function E1 = EXP(E)
[w, h] = size(E);
 E=im2double(E); 
    for i = 1:w
        for j = 1:h
            E1(i, j) = 1-exp(-0.5*(E(i, j)));  
        end
    end
    E1 = uint8(min(max(E1, 0), 1) * 255);
%  figure,imshow(E1);
end
