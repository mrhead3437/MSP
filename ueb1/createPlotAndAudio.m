function A_t = createPlotAndAudio(f,A, phi, i)
    fa=16000;
    Ta=1/fa; 
    t=(0:Ta:5-Ta);
    A_t=A*sin(2*pi*f*t+phi);
    subplot(3,1,i)
    plot(t*1000,A_t); xlabel('t[ms]'); ylabel('A(t)'); axis([0 20 -1 +1]);
    audio_output_file_name = strcat('sinus', num2str(f));
    file_format = 'Hz.wav';
    audiofile = strcat('audio/',strcat(audio_output_file_name,file_format));
    audiowrite(audiofile,A_t,fa);
end