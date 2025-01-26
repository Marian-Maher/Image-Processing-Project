function B1=Blur(B)
B=im2double(B);
mask=ones(3,3)/9;
B1=filter2(mask,B);
%  figure,imshow(B1);
end
