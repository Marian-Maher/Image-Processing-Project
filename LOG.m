function L1 = LOG(L)
    [w, h] = size(L); 
    L=im2double(L);
     for i = 1:w
        for j = 1:h
            L1(i,j)=log(1+L(i,j));
        end
     end
     L1 = L1 / max(L1(:));
    L1 = uint8(L1 * 255);
%     figure,imshow(L1);
end
