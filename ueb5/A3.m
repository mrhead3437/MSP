clc
clear workspace
close all

pathPflanze = 'result\gray_img_pflanze.bmp';
pathWand = 'result\gray_img_wand.bmp';
imagePflanze = imread(pathPflanze);
imageWand = imread(pathWand);

figure;
subplot(1,2,1);
imhist(imagePflanze);
axis ([0 255 0 10000]);
title("Graustufen Hist Wand");

subplot(1,2,2);
imhist(imageWand);
axis ([0 255 0 20000]);
title("Graustufen Hist Pflanze");