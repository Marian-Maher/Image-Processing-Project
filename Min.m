function M1=Min(M)
M=im2double(M);
neighbor=[3,3];

M1=ordfilt2(M,1,ones(neighbor),'symmetric');
%  figure,imshow(M1);
end
