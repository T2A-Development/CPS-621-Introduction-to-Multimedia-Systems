%###########################################
% CPS 621 Winter2022
% Lab03 
% Name: Tusaif Azmat Student#: 500660278.
%###########################################

%Part 5 Check the length of your melody and compute the theoretical file sizes
Melody_44100KHz_24bits = audioinfo('T_T_little_star_fs44100_Bits24.wav');
%get the .wav file information
fprintf('Melody_44100KHz_24bits, SampleRate: %d, Duration(s): %7.4f, Bits per Sample: %d\n', ...
    Melody_44100KHz_24bits.SampleRate, Melody_44100KHz_24bits.Duration,Melody_44100KHz_24bits.BitsPerSample);
Melody_44100KHz_8bits = audioinfo('T_T_little_star_fs44100_Bits8.wav');
%get the .wav file information
fprintf('Melody_44100KHz_8bits, SampleRate: %d, Duration(s): %7.4f, Bits per Sample: %d\n', ...
    Melody_44100KHz_8bits.SampleRate, Melody_44100KHz_8bits.Duration, Melody_44100KHz_8bits.BitsPerSample);
Melody_44100KHz_mp4 = audioinfo('T_T_little_star_fs44100.mp4');
%get the .wav file information
fprintf('Melody_44100KHz_mp4, SampleRate: %d, Duration(s): %7.4f, BitRate: %d\n', ...
    Melody_44100KHz_mp4.SampleRate, Melody_44100KHz_mp4.Duration, Melody_44100KHz_mp4.BitRate);
Melody_8000KHz_24bits = audioinfo('T_T_little_star_fs8000_Bits24.wav');
%get the .wav file information
fprintf('Melody_8000KHz_24bits, SampleRate: %d, Duration(s): %7.4f, Bits per Sample: %d\n', ...
    Melody_8000KHz_24bits.SampleRate, Melody_8000KHz_24bits.Duration, Melody_8000KHz_24bits.BitsPerSample);
Melody_8000KHz_8bits = audioinfo('T_T_little_star_fs8000_Bits8.wav');
%get the .wav file information
fprintf('Melody_8000KHz_8bits, SampleRate: %d, Duration(s): %7.4f, Bits per Sample: %d\n', ...
    Melody_8000KHz_8bits.SampleRate, Melody_8000KHz_8bits.Duration, Melody_8000KHz_8bits.BitsPerSample);
