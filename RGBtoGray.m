function [I1] = RGBtoGray(I)
[w,h,~]=size(I);
I1=zeros(w,h);
for i=1:w
    for j=1:h
        I1(i,j)=(I(i,j,1)*0.2+I(i,j,2)*0.3+I(i,j,3)*0.4);
    end
end
 I1=uint8(I1);
% figure,imshow(I1);
end
