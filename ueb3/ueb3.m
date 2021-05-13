clc
clear workspace
close all

y1 = audioread('Satz_fatih.wav');
y2 = audioread('Satz_mehmet.wav');
y3 = audioread('Satz_taher.wav');

[counts1,Rey1] = hist(y1,25);
[counts2,Rey2] = hist(y2,25);
[counts3,Rey3] = hist(y3,25);

figure
bar(Rey1,counts1.*100./sum(counts1),'g');
hold on
bar(Rey2,counts2.*100./sum(counts2), 'r');
hold on
bar(Rey3,counts3.*100./sum(counts3), 'b');

title('Sprachsignal');
xlabel ("Amplituden-Wertebereiche");
ylabel ("Prozentangabe");
saveas(gcf,strcat("ueb3.png"));