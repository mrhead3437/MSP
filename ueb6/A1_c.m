clc
clear workspace
close all

pathPflanze = 'images\pflanze_original.bmp';
pathWand = 'images\wand_original.bmp';
imagePflanze = imread(pathPflanze);
imageWand = imread(pathWand);

pPf_gray = rgb2gray(imagePflanze);
pWand_gray = rgb2gray(imageWand);

pflanze_weich = imread('result\pflanze_weich.bmp');
wand_weich = imread('result\wand_weich.bmp');

pflanze_weich = pflanze_weich(1:540,1:960);
wand_weich = wand_weich(1:540,1:960);

difference_pf = (pPf_gray - pflanze_weich);
difference_wand = (pWand_gray - wand_weich);

imshow(difference_pf);
imshow(difference_wand);

imwrite(difference_pf, 'result\pflanze_diff.bmp');
imwrite(difference_wand, 'result\wand_diff.bmp');

imwrite(difference_pf * 10, 'result\pflanze_kontrast.bmp');
imwrite(difference_wand * 10, 'result\wand_kontrast.bmp');