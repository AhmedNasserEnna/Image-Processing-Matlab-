function [ result ] = Gaussian_Filter_RGB( image,D0,index )
[H W L] = size(image);
result=zeros(H+2,W+2,L);
a=Gaussian_Filter(image(:,:,1),D0,index);
b=Gaussian_Filter(image(:,:,2),D0,index);
c=Gaussian_Filter(image(:,:,3),D0,index);
result=cat(3,a,b,c);
result=im2uint8(result);
end
