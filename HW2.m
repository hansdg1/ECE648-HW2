%%%%%%%%%%%%%%%%%%%%%%%%
% Project: ECE 648 HW2 %
% Author: Hans Guthrie %
%%%%%%%%%%%%%%%%%%%%%%%%


[speech1, Fs_speech1, nbits_speech1] = wavread('speech1.wav');
[speech2, Fs_speech2, nbits_speech2] = wavread('speech2.wav');
[audio1, Fs_audio1, nbits_audio1] = wavread('audio1.wav');

%% speech1.wav

speech1skip1 = speech1(1 : 2 : end); % --> 1,3,5,7,... (every other value)
sound(speech1skip1,Fs_speech1 / 2);
pause;
speech1skip3 = speech1(1 : 4 : end); % --> 1,5,9,13,...(every 4th value)
sound(speech1skip3,Fs_speech1 / 4);
pause;
speech1skip7 = speech1(1 : 8 : end); % --> 1,9,17,...  (every 8th value)
sound(speech1skip7,Fs_speech1 / 8);

%% speech2.wav

speech2skip1 = speech2(1 : 2 : end); % --> 1,3,5,7,... (every other value)
sound(speech2skip1,Fs_speech2 / 2);
pause;
speech2skip3 = speech2(1 : 4 : end); % --> 1,5,9,13,...(every 4th value)
sound(speech2skip3,Fs_speech2 / 4);
pause;
speech2skip7 = speech2(1 : 8 : end); % --> 1,9,17,...  (every 8th value)
sound(speech2skip7,Fs_speech2 / 8);
pause;

%% audio1.wav

audio1skip1 = audio1(1 : 2 : end); % --> 1,3,5,7,... (every other value)
sound(audio1skip1,Fs_audio1 / 2);
pause;
audio1skip3 = audio1(1 : 4 : end); % --> 1,5,9,13,...(every 4th value)
sound(audio1skip3,Fs_audio1 / 4);
pause;
audio1skip7 = audio1(1 : 8 : end); % --> 1,9,17,...  (every 8th value)
sound(audio1skip7,Fs_audio1 / 8);
pause;

%% 1.2 Quantization

Q = 2/64;   %64 levels (N)

sound(speech1, Fs_speech1); %play at normal speed
