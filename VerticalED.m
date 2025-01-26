function P1=VerticalED(P)
P=im2double(P);
mask=[-1,0,1;
    -2,0,2;
    -1,0,1];
P1=filter2(mask,P);
%  figure,imshow(P1);
end
