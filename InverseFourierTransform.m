function inft= InverseFourierTransform(img)
    % Check if the input image is a color image, convert to grayscale if needed
    if size(img, 3) == 3
        img = rgb2gray(img);
    end
    
    % Compute the 2D Fourier Transform
    F = fft2(double(img));
    inft=F;
    
    % Compute the magnitude spectrum
%     magnitudeSpectrum = log(1 + abs(F));
%     
%     imshow(magnitudeSpectrum, []);
   
end
