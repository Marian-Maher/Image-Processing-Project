function img_ft=showFourierTransform(img)
    % Check if the input image is a color image, convert to grayscale if needed
    if size(img, 3) == 3
        img = rgb2gray(img);
    end
    
    % Compute the 2D Fourier Transform
    F = fft2(double(img));
    
    % Shift the zero-frequency component to the center
    F_shifted = fftshift(F);
    img_ft=F_shifted;
    
    % Compute the magnitude spectrum
%     magnitudeSpectrum = log(1 + abs(F_shifted));
    
%     imshow(magnitudeSpectrum, []);
   
end
