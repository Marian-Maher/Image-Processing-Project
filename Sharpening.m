function S1=Sharpening(S)
S=im2double(S);
mask=[0,-1,0;
    -1,5,-1;
    0,-1,0];
S1=filter2(mask,S);
%  figure,imshow(S1);
end
