[f,fs] = audioread('message.wav');
len = length(f)/fs;
sig0 = audioread('q3/0.ogg');
sig1 = audioread('q3/1.ogg');
sig2 = audioread('q3/2.ogg');
sig3 = audioread('q3/3.ogg');
sig4 = audioread('q3/4.ogg');
sig5 = audioread('q3/5.ogg');
sig6 = audioread('q3/6.ogg');
sig7 = audioread('q3/7.ogg');
sig8 = audioread('q3/8.ogg');
sig9 = audioread('q3/9.ogg');
sig_all = [ sig0(1:fs),sig1(1:fs),sig2(1:fs),sig3(1:fs),sig4(1:fs),sig5(1:fs),sig6(1:fs),sig7(1:fs),sig8(1:fs),sig9(1:fs) ];
result = uint64(0);
for i = [1:len]
    abc = f( (i-1)*fs+1 : i*fs );
    max = -10
    pos = -1
    for j = 1:10
        temp = dot(sig_all(:,j),abc)/(norm(abc)*norm(sig_all(:,j)));
        if temp > max
            max = temp
            pos = j
        end
    end
    result = result*10+pos-1;
end
disp(result);
    

