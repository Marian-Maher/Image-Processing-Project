
function ideal_image = IdealPass(A, D0, High)
    [M, N] = size(A);
    
    % Fourier Transform and Frequency Shift
    A1 = fft2(A);
    A2 = fftshift(A1);
    
    % Create Filter
    filter = zeros(M, N);
    for x = 1:M
        for y = 1:N
            if sqrt((x - M/2)^2 + (y - N/2)^2) > D0
                filter(x, y) = 0;
            else
                filter(x, y) = 1;
            end
        end
    end
    
    % Convert to High Pass if needed
    if High == 1
        filter = 1 - filter;
    end
    
    % Apply Filter to Frequency Components
    New_image = filter .* A2;
    
    % Inverse Fourier Transform
    inverse_image = ifft2(ifftshift(New_image));
    
    % Calculate Magnitude and Normalize
    filtered_image = abs(inverse_image);
    ideal_image = mat2gray(filtered_image);
    
    % Display Results
%     subplot(2, 2, 1), imshow(A), title('Original Image');
%     subplot(2, 2, 2), imshow(log(1 + abs(A2)), []), title('Frequency Image');
%     subplot(2, 2, 3), imshow(filter, []), title('Filter');
%     subplot(2, 2, 4), imshow(filtered_image, []), title('Filtered Image');
% imshow(filtered_image);
end
