% Low pass filter for imported sounds (e.g., speech and noise)
% Mingshuang Li, UT Austin
clear;

wavefile = input('Please type the wave file name: ', 's');
cutoff = input('Please input the low cut off frequency (Hz): ');
steepness = input('Please input the steepness ratio: ');
[waveform, fs] = audioread(wavefile);
[waveform_LP,d] = lowpass(waveform,cutoff,fs,'Steepness',steepness);
figure;
pspectrum(waveform_LP,fs)
names= input('Please type name of new audiofile: ', 's');
audiowrite(names,waveform_LP,fs)
