function butterworth_image = ButterworthPass(A, D0, n, High)
    % A: Input image
    % D0: Cutoff frequency
    % n: Order of the Butterworth filter
    % High: 1 for High-Pass, 0 for Low-Pass

    [M, N] = size(A);

    % Fourier Transform and Frequency Shift
    A1 = fft2(A);
    A2 = fftshift(A1);

    % Initialize Butterworth Filter
    filter = zeros(M, N);

    for x = 1:M
        for y = 1:N
            % Distance from center
            D = sqrt((x - M/2)^2 + (y - N/2)^2);
            
            % Butterworth formula
            if High == 1
                filter(x, y) = 1 / (1 + (D0 / D)^(2 * n)); % High-Pass
            else
                filter(x, y) = 1 / (1 + (D / D0)^(2 * n)); % Low-Pass
            end
        end
    end

    % Apply Filter to Frequency Components
    New_image = filter .* A2;

    % Inverse Fourier Transform
    inverse_image = ifft2(ifftshift(New_image));

    % Calculate Magnitude and Normalize
    filtered_image = abs(inverse_image);
    filtered_image = mat2gray(filtered_image);

    % Display Results
%     subplot(2, 2, 1), imshow(A, []), title('Original Image');
%     subplot(2, 2, 2), imshow(log(1 + abs(A2)), []), title('Frequency Image');
%     subplot(2, 2, 3), imshow(filter, []), title('Butterworth Filter');
%     subplot(2, 2, 4), imshow(filtered_image, []), title('Filtered Image');

    butterworth_image = filtered_image;
end