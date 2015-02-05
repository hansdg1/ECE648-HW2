function quantization(filename, numLevels)
% QUANTIZATION quantizes the file's values to a set number of levels using
% uniform quantization
% filename  : file to be quantized
% numLevels : number of levels

% ============ NUMBER 1 ============
% Read the speech file, and play at the normal frequency
[audioinput, Fs, BitsPerSample] = wavread(filename);
fprintf('Playing %s, at normal frequency\n', filename);
sound(audioinput, Fs); % Play normally
pause;

% ============ NUMBER 2 ============
% Quantize the speech samples to N levels, play at normal frequency
N = numLevels;
Q = 2/N;
Speech_Quantized = sign(audioinput).*(floor(abs(audioinput)/Q))*Q;
fprintf('Quantized: playing %s sampled to %d levels at normal frequency\n', filename, numLevels);
sound(Speech_Quantized, Fs);
pause;

% ============ NUMBER 3 ============
% Quantize the speech samples using µ-law compander to 64 levels
%  with the value of µ also set to the number of quantization levels.
% Play the quantized sound wave at normal frequency.
U = N;                          % Compression Parameter
Xmax = max(abs(audioinput));    % Maximum Value of abs(X)

%ULAW ENCODING
%%%Not sure about the Xmax at beginning of next line
audioinputU = Xmax .* sign(audioinput) .* log(1+(U*abs(audioinput/Xmax))) ./ log(1+U);
%QUANTIZATION
audioinputU = sign(audioinputU) .* (floor(abs(audioinputU)/Q)) * Q;
%ULAW DECODING
audioinputU = sign(audioinputU) .* (Xmax./U) .* ((1+U).^abs(audioinputU) - 1);

fprintf('Quantized with µ-law compander: %s sampled to %d levels, µ set to number of levels, normal frequency\n\n', filename, numLevels);
sound(audioinputU, Fs);
pause;

end