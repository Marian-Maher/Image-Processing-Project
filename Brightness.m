function A1 = Brightness(A, val, op)
     
    [w, h] = size(A);
    
    A1 = zeros(w, h, 'like', A);

    for i = 1:w
        for j = 1:h
            switch op
                case '+'
                    A1(i,j) = A(i,j) + val;
                case '-'
                    A1(i,j) = A(i,j) - val;
                case '*'
                    A1(i,j) = A(i,j) * val;
                case '/'
                    if val ~= 0 
                        A1(i,j) = A(i,j) / val;
                    else
                        A1(i,j) = A(i,j); 
                    end
                otherwise
                    error('Invalid operation. Use +, -, *, or /.');
            end

            if A1(i,j) < 0
                A1(i,j) = 0;
            elseif A1(i,j) > 255
                A1(i,j) = 255;
            end
        end
    end

   
    
    A1 = cast(A1, 'like', A);  
%     figure,imshow(A1);
end
