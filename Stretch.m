function [I1] = Stretch(I, new_min, new_max)
    [w, h] = size(I);
     I = double(I); 
    old_min = min(min(I));
    old_max = max(max(I)); 
    I1 = zeros(w, h);
    for i = 1:w
        for j = 1:h
            I1(i, j) = ((I(i, j) - old_min) / (old_max - old_min)) * (new_max - new_min) + new_min;
        end
    end
    I1 = uint8(I1); 
%     figure, imshow(I1);
end
