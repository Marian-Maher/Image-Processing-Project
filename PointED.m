function P1=PointED(P)
P=im2double(P);
mask=[-1,-1,-1;
    -1,8,-1;
    -1,-1,-1];
P1=filter2(mask,P);
%  figure,imshow(P1);  
end
