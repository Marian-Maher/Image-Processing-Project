function B1 = RGBtoBinary(B)
A=RGBtoGray(B);
B1=GraytoBinary(A,128);
% figure,imshow(B1);
end