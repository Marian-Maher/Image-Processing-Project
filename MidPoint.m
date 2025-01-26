function M1=MidPoint(M)
M=im2double(M);
neighbor=[3,3];

maxFiltered = ordfilt2(M, prod(neighbor), ones(neighbor), 'symmetric');
 minFiltered = ordfilt2(M, 1, ones(neighbor), 'symmetric');  
 M1 = (maxFiltered + minFiltered) / 2;
%  figure,imshow(M1);
end
