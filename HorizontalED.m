function P1=HorizontalED(P)
P=im2double(P);
mask=[-1,-2,-1;
    0,0,0;
    1,2,1];
P1=filter2(mask,P);
%  figure,imshow(P1);
end
