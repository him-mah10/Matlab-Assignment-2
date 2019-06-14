dial_tone(20171033);
function output = dial_tone(rollno)
fs=3000  % sampling frequency
sig_period=0:1/fs:1;
wait_period=0:1/fs:0.3;
rollno=num2str(rollno)-'0';
output = zeros(1);

for i=1:length(rollno)
    if rollno(i) == 0
        temp = sin(2*pi*941*sig_period)+sin(2*pi*1336*sig_period);
    end
    
    if rollno(i) == 1
        temp = sin(2*pi*1209*sig_period)+sin(2*pi*697*sig_period);
    end
    
    if rollno(i) == 2
        temp = sin(2*pi*697*sig_period)+sin(2*pi*1336*sig_period);
    end
    
    if rollno(i) == 3
        temp = sin(2*pi*697*sig_period)+sin(2*pi*1477*sig_period);
    end
    
    if rollno(i) == 4
        temp = sin(2*pi*770*sig_period)+sin(2*pi*1209*sig_period);
    end
    
    if rollno(i) == 5
        temp = sin(2*pi*770*sig_period)+sin(2*pi*1336*sig_period);
    end
    
    if rollno(i) == 6
        temp = sin(2*pi*770*sig_period)+sin(2*pi*1477*sig_period);
    end
    
    if rollno(i) == 7
        temp = sin(2*pi*1209*sig_period)+sin(2*pi*852*sig_period);
    end
    
    if rollno(i) == 8
        temp = sin(2*pi*852*sig_period)+sin(2*pi*1336*sig_period);
    end
    
    if rollno(i) == 9
        temp = sin(2*pi*852*sig_period)+sin(2*pi*1477*sig_period);
    end
    output = horzcat(output,temp)
    if i==length(rollno)
        continue;
    end
    gap = sin(wait_period);
    output = horzcat(output,gap);
end
pspectrum(output,fs,'spectrogram','Leakage',1,'OverlapPercent',0, ...
  'MinThreshold',-10,'FrequencyLimits',[650, 1500]);
sound(output);
end
