function M1=Max(M)
M=im2double(M);
neighbor=[3,3];
% B = ordfilt2(A, order, domain, padding)
% (M,9,[111;111;111;],padding)
M1=ordfilt2(M,prod(neighbor),ones(neighbor),'symmetric');
%  figure,imshow(M1);
end
