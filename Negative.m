function N1 = Negative(N)
    N = im2double(N) * 255; 
    N1 = zeros(size(N));  

    N1 = 255 - N;  
    N1 = uint8(min(max(N1, 0), 255));
%     figure,imshow(N1);
end
