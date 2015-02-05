function quantization(filename, numLevels)
%NUMBER 1
[audioinput, Fs, BitsPerSample] = wavread(filename);
sound(audioinput,Fs);

%NUMBER 2
N = numLevels;
Q = 2/N;
Speech_Quantized = sign(audioinput).*(floor(abs(audioinput)/Q))*Q;
sound(Speech_Quantized, Fs);
pause;

%NUMBER 3
U = N;
Xmax = max(abs(audioinput));

%ULAW ENCODING
audioinputU = Xmax.*sign(audioinput).*log(1+(U*abs(audioinput)/Xmax))./log(1+U);
%QUANTIZATION
audioinputU = sign(audioinputU).*(floor(abs(audioinputU)/Q)).*Q;
%ULAW DECODING
audioinputU = sign(audioinputU).*(Xmax./U).*((1+U).^abs(audioinputU) - 1);

sound(audioinputU, Fs);
pause;

end