function G1 = GraytoBinary(G, T)
    [w, h] = size(G);
    G1 = zeros(w, h);

    for i = 1:w
        for j = 1:h
            if G(i,j) >= T
                G1(i,j) = 1;  
            end
        end
    end
%     figure,imshow(G1);
end


