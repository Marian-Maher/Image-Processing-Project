function [I1] = Histogram(I)
[w ,h]=size(I);
I1=zeros(256,1);
for i=1:w
    for j=1:h
        index=I(i,j);
        I1(index+1)=I1(index+1)+1;
    end
end
% figure,bar(I1);
end