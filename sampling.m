function sampling(filename, frequencyAdjust)
%SAMPLING Responsible for the sampling. See Readme docs
%   Samples the file, and adjusts the frequency given the frequency
%   adjustment value


% audioinput    : sampled audio
% Fs            : sample rate in Hertz used to encode the data
% BitsPerSample : number of bits per sample
[audioinput, Fs, BitsPerSample] = wavread(filename);


fprintf('Sampling: %s, at 1/%d the frequency\n', filename, frequencyAdjust);
audioinput_frequencyAdjusted = audioinput(1 : frequencyAdjust : end); % --> 1, 1+n, 1+ 2n,1 + 3n, ... 
sound(audioinput_frequencyAdjusted, Fs / frequencyAdjust); % play audio file for adjusted frequency
pause;

end

