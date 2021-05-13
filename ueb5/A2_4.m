clc
clear workspace
close all

pathPflanze = 'images\pflanze_original.bmp';
pathWand = 'images\wand_original.bmp';
imagePflanze = imread(pathPflanze);
imageWand = imread(pathWand);
run(imagePflanze, 'pflanze');
run(imageWand, 'wand');

function run(image, file)
    XYZ = rgb2xyz(image);
    figure
    subplot(1,2,1);
    imshow(image);
    title('Bild im RGB Farbraum');
    subplot(1,2,2);
    imshow(XYZ);
    name = strcat('result\xyz_',file,'.bmp');
    imwrite(XYZ, name);
    title('Bild im XYZ Farbraum');
end