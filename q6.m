image = imread('cameraman.tif');
twof = fft2(fft2(image));
figure,
imshow(mat2gray(abs(twof)));
title('Output after applying fft twice');
