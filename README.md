# Procedure Details
## Sampling
1. Read the speech file 'speechl.wav' and play sound at the normal frequency (wavread, sound). Determine the total number of samples, number of bits per sample and the sampling frequency of the speech clip.
2. Sample alternate values of the speech sequence 'speechl.wav' and play at half the frequency (i.e. keep the playing time the same).
3. Sample every fourth value of the speech sequence 'speechl.wav' and play at one-fourth the frequency (i.e. keep the playing time the same).
4. Sample every eighth value of the speech sequence 'speechl.wav' and play at one-fourth the frequency (i.e. keep the playing time the same).
5. Repeat Parts 1, 2 and 3 for other sound files 'speech2.wav' and 'audiol.wav'.
	
## Quantization
1. Read the speech file 'speechl.wav' and play sound at the normal frequency (wavread, sound).
2. Quantize the speech samples to 64 levels using uniform quantization and play the sound at the normal frequency.
3. Quantize the speech samples using µ-law compander to 64 levels with the value of µ also set to the number of quantization levels. Play the quantized sound wave at normal frequency.
4. Repeat Parts 1, 2 and 3 for the sound files 'speech2.wav' and 'audiol.wav'.
5. Repeat Parts 1, 2, 3 and 4 using 32 and 16 levels.

# Write-Up
1. Comment on the quality of sound played by the speech and audio files at different sampling rates. Summarize your results in the table form.
2. Comment on the quality of sound played by quantized speech and audio files with and without µ-law compression for different quantization levels. Summarize your results in the table form.
3. Give the listing of all the MATLAB programs used in the computer experiment.
