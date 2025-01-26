function S1=DiagonalRSH(S)
S=im2double(S);
mask=[4/3 -0.5 -0.5; 
             -0.5  4/3 -0.5; 
             -0.5 -0.5  4/3];
S1=filter2(mask,S);
%  figure,imshow(S1);
end
