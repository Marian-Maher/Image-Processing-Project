function G1 = Gamma(G, T)
    [w, h] = size(G);
    I=im2double(G);
    G1 = zeros(w, h);

    for i = 1:w
        for j = 1:h
            G1(i,j)=I(i,j).^T;
            if G1(i,j) < 0
                G1(i,j) = 0;
            elseif G1(i,j) > 1
                G1(i,j) = 1;
            end
        end
    end
     G1 = uint8(min(max(G1, 0), 1) * 255);
%     figure,imshow(G1);
end
