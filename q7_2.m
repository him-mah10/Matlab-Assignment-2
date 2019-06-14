[input,fs] = audioread('message.wav');
%input=input(:,1);
%spectrogram(input,512,0);
%pspectrum(input,fs,'spectrogram','Leakage',1,'OverlapPercent',0);
pspectrum(input,fs,'spectrogram','Leakage',0,'OverlapPercent',0, ...
    'FrequencyLimits',[0, 6000]);
%figure, spectrogram(input,2000,'yaxis')
%pspectrum(input,fs,'spectrogram','Leakage',1,'OverlapPercent',0, ...
 %   'MinThreshold',-10);
 %pspectrum(tones,Fs,'spectrogram','Leakage',1,'OverlapPercent',0, ...
  %  'MinThreshold',-10,'FrequencyLimits',[650, 1500]);
