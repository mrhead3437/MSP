function frameVariation(sum)
    hold on;
    freq = 16000;
    times = [0.02,0.05,0.1,0.5,1,5];
    f = figure('name','Sinusgemisch_fft','NumberTitle','off');
    for i=1:6
        subplot(3,2,i);
        N = times(i)*freq;
        doFFTAndPlot(sum,N);
        title("Framelänge: " + times(i) + "s");
    end
    hold off;
    saveas(f,"pics/Sinusgemisch_fft.png");
end