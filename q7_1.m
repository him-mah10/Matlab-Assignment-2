i = audioread('chirp.wav');
my_spectrogram(i,300,100);
figure,spectrogram(i,250,'yaxis');
title('Using inbuilt spectrogram function');

function output = my_spectrogram(input, ws, stride_len)
step = ws - stride_len;
starting_point = [ 1 : step : length(input)-ws ];
%disp(length(starting_point));
%disp((length(input)-ws)/step);
output = zeros (length(starting_point),ws);
for i=1:length(starting_point)
    output(i,:) = abs(fft(input(starting_point(i):starting_point(i)+ws-1)));
end
figure, imagesc(output);
title('Custom spectrogram function');
end

