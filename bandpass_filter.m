% Band filter for imported sounds (e.g., speech and noise), based on matlab
% Mingshuang Li, UT Austin
clear;

wavefile = input('Please type the wave file name: ', 's');
[waveform, fs] = audioread(wavefile);
low_cutoff = input('Please input the low cut off frequency (Hz): ');
high_cutoff = input('Please input the high cut off frequency (Hz): ');
waveform_banded = bandpass(waveform,[low_cutoff high_cutoff],fs);
figure;
pspectrum(waveform_banded,fs, 'FrequencyLimits',[1 10000]);
names= input('Please type name of new audiofile: ', 's');
audiowrite(names,waveform_banded,fs)
