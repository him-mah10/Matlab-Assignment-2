image = imread('cameraman.tif');

rows = zeros(size(image));
two_d_fft = zeros(size(image));
image=double(image);
for i=1:size(image,1)
    rows(i,:) = one_d_fourier(image(i,:));
end
for i=1:size(image,2)
    two_d_fft(:,i) = one_d_fourier(rows(:,i).');
end
C = fftshift(two_d_fft);
figure, imagesc(log(abs(C)+1)), colormap gray;
title('Using Recursive FFT function');
D = fftshift(fft2(image));
figure, imagesc(log(abs(D)+1)), colormap gray;
title('Using Inbuilt FFT function');

function output = one_d_fourier(i)
    len = length(i);
    if len == 1
        output = i;
    else
        odd = i(1:2:len);
        even = i(2:2:len);
        
        fodd = one_d_fourier(odd);
        feven = one_d_fourier(even);
        ex = exp(-1i*2*pi*((0:len/2-1)')/len);
        output_left = feven + ex.*fodd;
        output_right = feven - ex.*fodd;
        output = [output_left;output_right];
    end        
end

