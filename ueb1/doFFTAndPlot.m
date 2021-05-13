function doFFTAndPlot(signal, N)
    Y = fft(signal, N);
    plot(abs(Y)*1000);
    xlabel("f in [Hz]");
    ylabel("|Y(t)|");
end