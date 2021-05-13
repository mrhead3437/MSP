clc
clear workspace
close all

pathPflanze = 'images\pflanze_original.bmp';
pathWand = 'images\wand_original.bmp';
imagePflanze = imread(pathPflanze);
imageWand = imread(pathWand);

gray_img = rgb2gray(imagePflanze);
imwrite(gray_img, 'result\gray_img_pflanze.bmp');
gray_img2 = rgb2gray(imageWand);
imwrite(gray_img2, 'result\gray_img_wand.bmp');

figure
subplot(2,2,1);
imshow(imagePflanze);
title('Pflanze Farbe');
subplot(2,2,3);
imshow(gray_img);
title('grayScale of Pflanze');

subplot(2,2,2);
imshow(imageWand);
title('Wand Farbe');
subplot(2,2,4);
imshow(gray_img2);
title('grayScale of Wand');