clc
clear workspace
close all

pathPflanze = 'images\pflanze_original.bmp';
pathWand = 'images\wand_original.bmp';
imagePflanze = imread(pathPflanze);
imageWand = imread(pathWand);
infoPflanze = imfinfo(pathPflanze);
infoWand = imfinfo(pathWand);

strcat("Pflanze : " + infoPflanze.Width + "x" + infoPflanze.Height)
strcat("Wand : " + infoWand.Width + "x" + infoWand.Height)