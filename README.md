<h1 align="center"> Matlab-Assignment-1</h1>

#### Author - Himanshu Maheshwari
This repository contains solutions to Matlab Assignment 2 for DSAA course at IIIT Hyderabad. Report contain details of algorithm implementation, results and observations and answers to the subjective questions (if any).

#### Questions:
1) This question comprises of 5 parts. Avoid using non-vectorized code as far as possible.
	1) Create a Matlab function called gauss f ilter that takes the following two arguments
as input:
		* N : Kernel size
		* sigma: Standard deviation sigma
		
		This function will return a N x N Gaussian filter with standard deviation sigma. Try
different values for N (>64) and sigma and submit the images produced. Compare
the output of the filter produced by the above function with the one produced using
fspecial (Normalize the output so that the values sum to 1)
	2) Create a Matlab function called median f ilter that takes the following arguments as
input:
		* I: Image
		* N : Kernel size
		
		This function will run median filtering on the image I using a N x N window.
	3) Run both these filters on the image cameraman.tif . Submit the outputs for the same.
Try different values for the arguments N and sigma. (Use imfilter to apply a filter on
an image)
	4) Read the image called inp1.png given in the assignment directory. Try removing the
noise using the various filters taught in the class. Which filter is the most suitable for
this type of noise?
	5) Remove noise from the image inp2.png given in the assignment directory. What type
of filter can be used for this purpose? (You may have to work in the frequency domain
for this one)

2) An image of size (Width, Height, Channels) is convolved with N filters of size (F,F,Channels).The
convolution is done with a step size of S units, and the input is also padded with a zero
padding of Z. The convolution always happens in such a way that the filter is always con-
tained in the image.
	1) Predict the dimensions of the output of this convolution.
	2) How many additions and multiplications are involved in this convolution?
	

3) You have just spotted the most wanted fugitive from the FBIs most wanted list. She is at a
phone booth and has pressed a few numbers on the phones keypad. You have tampered with
the phonebooth and have an audio recording of the numbers that she has dialed. Help the
FBI in chasing her partner down by identifying which numbers she has dialed. Note that all
the numbers have been pressed for the same duration. You have been given the audio files
for the sounds of the individual dial tones.

4) Download the file corresponding to your Roll Number mod 8 from here and design your own
filter to remove noise from the file, as much as possible.Write a MATLAB code to denoise
the signal with your filter and also write a brief description about the implementation of
the filter in the report. Also analyze the resulting signal and write your observations in the
report.

5) Implement 2D Fast Fourier Transform (Recursive Formulation) and DFT. In report pick any
3 images and show the output generated from your code and in-built function. Compare the
run times of your version of dft and fft on different sized inputs and plot them. Write your
observations in the report.

6) Calculate the Fourier transform of the Fourier transform of any image. You would observe
that the image you get is similar to the original image. How is it different from the original
image? Write your observation and explanation in the report. How can you fix this in the
frequency domain so that we would get the original image back instead?

7) This question consists of 3 parts
	1) Write a Matlab function to compute the spectrogram of a given audio file (Use window
size and the length of the stride as the input to your function). Write your observations
by varying the window size and length of the stride in the report. Compare your results
with the inbuilt spectrogram function in Matlab for the audio file chirp.wav.
	2) Darth Vader has surrounded the rebel ship and the admiral was forced to send you
the Death Star plans and a sound file via mail. The mail is password protected and
a clue about the password is given in the sound file called message.wav. You must
recover the password in order to get the Death star plans as you are the sole hope of
the Rebellion. (You may use any signal processing techniques taught in the class for
the same.)
	3) Create a Matlab function called dial tone that takes your roll number as input. The
function will create a tone corresponding to the roll number based on the touch tone for
each frequency. Plot a spectrogram for the created tone. A sample tone like tone.wav
is expected. You may add a pause of 0.2 − 0.3s between each tone. (For the frequencies
corresponding to each digit, refer to this link: DTMF)

#### Cheers!!!
