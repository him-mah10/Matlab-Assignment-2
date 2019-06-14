image = imread('cameraman.tif');
rows = zeros(size(image));
two_d_dft = zeros(size(image));
image=double(image);
for i=1:size(image,1)
    rows(i,:) = one_d_dft(image(i,:));
end
for i=1:size(image,2)
    two_d_dft(:,i) = one_d_dft(rows(:,i).');
end
C = fftshift(two_d_dft);
figure, imagesc(mat2gray(log(abs(C)+1))), colormap gray;
title('Using my function');

D = fftshift(fft2(image));
figure, imagesc(mat2gray(log(abs(D)+1))), colormap gray;
title('Using Inbuilt function');

function output = one_d_dft(x)
[k,n] = meshgrid(0:length(x)-1);
temp = n.*k;
ex = exp(-1i .* 2 .* pi .* temp ./ length(x));
output = (ex*x')';
end
