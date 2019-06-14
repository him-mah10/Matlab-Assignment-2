I = imread('inp2.png');
I = im2double(I);
V = fftshift(fft2(I));
clipper=vertcat(zeros(125,238),ones(50,238),zeros(143,238));
W = V.*clipper
A = abs(ifft2((W)));

figure
subplot(1,2,1)
imshow(I);  
title('Original Image');

subplot(1,2,2);
imshow(A);
title('Filtered Image');
