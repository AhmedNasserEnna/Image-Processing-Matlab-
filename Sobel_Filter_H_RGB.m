function [ result ] = Sobel_Filter_H_RGB( image)
[H W L] = size(image);
result=zeros(H+2,W+2,L);
a=Sobel_Filter_H(image(:,:,1));
b=Sobel_Filter_H(image(:,:,2));
c=Sobel_Filter_H(image(:,:,3));
result=cat(3,a,b,c);
result=im2uint8(result);
end