function P1=DiagonalLeftED(P)
P=im2double(P);
mask=[2,1,0;
    1,0,-1;
    0,-1,-2];
P1=filter2(mask,P);
%  figure,imshow(P1);
end
