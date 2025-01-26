function [I1] = Equalization(I)
    [w, h] = size(I);   
    I = double(I);
    G = Histogram(I);    
    % Compute the cumulative distribution function (CDF)
    CDF = cumsum(G);   % Cumulative sum of the histogram counts 
    NCDF = (CDF - CDF(1)) / (w * h - CDF(1)) * 255; 
    I1 = zeros(w, h);   
    for i = 1:w
        for j = 1:h
            val = I(i, j); 
            I1(i, j) = NCDF(val + 1); 
        end
    end    
    I1 = uint8(I1);     
%     figure, imshow(I1);
end
