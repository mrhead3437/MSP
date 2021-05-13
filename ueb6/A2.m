clc
clear workspace
close all

pathPflanze = 'images\pflanze_original.bmp';
pathWand = 'images\wand_original.bmp';
imagePflanze = imread(pathPflanze);
imageWand = imread(pathWand);

pPf_gray = rgb2gray(imagePflanze);
pWand_gray = rgb2gray(imageWand);

H = [0 -2 0; -2 12 -2; 0 -2 0];

Y1 = filter2(H,pPf_gray/255,'full');
Y2 = filter2(H,pWand_gray/255,'full');

imwrite(Y1 /4, 'result\gradientenfilter_pflanze.bmp');
imwrite(Y2 /4, 'result\gradientenfilter_wand.bmp');

Y1 = Y1(1:540,1:960) *40;
Y2 = Y2(1:540,1:960) *40;
% Muss angepasst werden

double_pf = im2double(pPf_gray);
double_wand = im2double(pWand_gray);

im1 = double_pf - Y1;
im2 = double_wand - Y2;
imwrite(im1, 'result\gradientenfilter_kontrast_pflanze.bmp');
imwrite(im2, 'result\gradientenfilter_kontrast_wand.bmp');

figure
imshow(im1);
figure
imshow(im2);