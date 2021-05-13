function sum = sinusSum(s1, s2, s3)
    fa = 16000;
    delta_t = 5;
    s_sum = s1+s2+s3;
    s_sum = s_sum/max(abs(s_sum)); %auf +/- 1 skalieren  
    Ta=1/fa;
    t=(0:Ta:delta_t-Ta);
    figure('name', 'Sinussumme')
    subplot(2,1,1);
    plot(t*1000, s_sum);
    xlim([0,20]);
    axis([0 20 -1 +1]); xlabel('t[ms]'); ylabel('A(t)');title('Sinussumme');
    N = delta_t / Ta;
    F_f = fft(s_sum, N);  % Fouriertransformation
    delta_f = fa/N;
    f = (0:delta_f:fa-delta_f);
    subplot(2,1,2);
    plot(f*1000, abs(F_f)); title('Fouriertransformation der Sinusschwingung');
    xlabel('f[Hz]'); ylabel('A(f)')
    set(gcf, 'Position',  [100, 100, 800, 500])
    saveas(gcf,strcat("pics/", 'SinusFFT.png'));
    filename = 'audio/SinusSumme.wav';
    audiowrite(filename,s_sum,fa,'BitsPerSample',16);
    sum = s_sum;
end