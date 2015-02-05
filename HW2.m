%%%%%%%%%%%%%%%%%%%%%%%%
% Project: ECE 648 HW2 %
% Author: Hans Guthrie %
%%%%%%%%%%%%%%%%%%%%%%%%

%% Sampling

% ============ speech1.wav ============
sampling('speech1.wav',1);      % Sample every value, play at normal frequency
% Note: the Bits Per Sample is calculated in the sampling() function.
sampling('speech1.wav',2);      % Sample alternate values, play at 1/2 the frequency
sampling('speech1.wav',4);      % Sample every 4th value, play at 1/4th frequency
sampling('speech1.wav',8);      % Sample every 8th value, play at 1/8th frequency

% ============ speech2.wav ============
sampling('speech2.wav',1);      % Sample every value, play at normal frequency
% Note: the Bits Per Sample is calculated in the sampling() function.
sampling('speech2.wav',2);      % Sample alternate values, play at 1/2 the frequency
sampling('speech2.wav',4);      % Sample every 4th value, play at 1/4th frequency
sampling('speech2.wav',8);      % Sample every 8th value, play at 1/8th frequency

% ============ audio1.wav ============
sampling('audio1.wav',1);       % Sample every value, play at normal frequency
% Note: the Bits Per Sample is calculated in the sampling() function.
sampling('audio1.wav',2);       % Sample alternate values, play at 1/2 the frequency
sampling('audio1.wav',4);       % Sample every 4th value, play at 1/4th frequency
sampling('audio1.wav',8);       % Sample every 8th value, play at 1/8th frequency

%% Quantization

% ============ 64 Levels ============
fprintf('64 levels\n');
% Quantize each file to 64 levels, play at normal frequency
quantization('speech1.wav',64); 
quantization('speech2.wav',64);
quantization('audio1.wav',64);

% ============ 32 Levels ============
fprintf('32 levels\n');
quantization('speech1.wav',32);
quantization('speech2.wav',32);
quantization('audio1.wav',32);

% ============ 16 Levels ============
fprintf('16 levels\n');
quantization('speech1.wav',16);
quantization('speech2.wav',16);
quantization('audio1.wav',16);

