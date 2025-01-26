function M1=Median(M)
M=im2double(M);
neighbor=[3,3];

M1=medfilt2(M,neighbor,'symmetric');
%  figure,imshow(M1);
end
