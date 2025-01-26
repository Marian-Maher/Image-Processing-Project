function M1=Mean(M)
M=im2double(M);
mean_filter=fspecial('average',3);
M1=imfilter(M,mean_filter,'replicate');
%  figure,imshow(M1);  
end
