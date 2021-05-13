clc
clear workspace
close all

% Werte für unsere Gruppe
f1=500; % in Hz
f2=1000; % in Hz
f3=3000; % in Hz
A1=1;
A2=0.5;
A3=0.5;
phi1=0;
phi2=-pi/2;
phi3=pi/2;
%Vokal 1= A
%Vokal 2= I

%Teilaufgabe 1a
s1 = createPlotAndAudio(f1, A1, phi1, 1);
s2 = createPlotAndAudio(f2, A2, phi2, 2);
s3 = createPlotAndAudio(f3, A3, phi3, 3);

set(gcf, 'Position',  [100, 100, 800, 500])
saveas(gcf,strcat("pics/teilaufgabe_1_a.png"));
%Teilaufgabe 1b
sum = sinusSum(s1,s2,s3);

%Teilaufgabe 2
frameVariation(sum);

%Teilaufgabe 3
audioReader('audio/Fatih_a.wav', 'Fatih_a');
audioReader('audio/Fatih_a.wav', 'Fatih_i');
audioReader('audio/Mehmet_a.wav', 'Mehmet_a');
audioReader('audio/Mehmet_i.wav', 'Mehmet_i');
audioReader('audio/Taher_a.wav', 'Taher_a');
audioReader('audio/Taher_i.wav', 'Taher_i');