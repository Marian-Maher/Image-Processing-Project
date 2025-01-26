function S1=VerticalSH(S)
S=im2double(S);
mask=[-0.5  4/3 -0.5; 
    -0.5  4/3 -0.5;
    -0.5  4/3 -0.5];
S1=filter2(mask,S);
%  figure,imshow(S1);
end
