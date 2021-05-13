function audioReader(wavePath, name)
    [wavefile,fa] = audioread(wavePath);
    v = [0.05,0.1,0.5,1];
    f = figure('name',name,'NumberTitle','off');
    for i=1:4
        subplot(2,2,i);
        N = v(i)*fa;
        doFFTAndPlot(wavefile,N);
        title("Framelänge:" + v(i) + "s");
    end
    saveas(f,strcat("pics/", strcat(name, ".png")));
end