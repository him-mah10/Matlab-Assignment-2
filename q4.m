input = audioread('signal_1.wav'); 
%sound(input);
output = medfilt1(input);
output = output*5;
sound(output);
