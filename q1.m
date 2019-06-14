image = imread('inp1.png');
%image=rgb2gray(image);
gf = gauss_filter(256,1);
median_image = median_filter(image,3);
gaussian_image = imfilter(image,gf);
figure,imshow(image);
title("Original Image");
figure,imshow(median_image);
title("Custom Median Filter");
figure,imshow(gaussian_image);
title("Custom Gaussian Filter");

function output = gauss_filter(N,sigma)
N=floor(N/2);
[x,y]=meshgrid(-N:N);
%disp(x);
output = exp( (-1/(2*sigma*sigma)) * ((x.^2)+(y.^2)) );
output = output ./ sum(output(:))
end

function output = median_filter(I,N)
ip = padarray(I, [floor(N/2) floor(N/2)]);
ic = im2col(ip, [N N]);
med = median(ic);
output = col2im(med, [N N], size(ip));
end

