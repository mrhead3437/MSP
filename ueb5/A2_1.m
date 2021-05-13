clc
clear workspace
close all

pathPflanze = 'images\pflanze_original.bmp';
pathWand = 'images\wand_original.bmp';
imagePflanze = imread(pathPflanze);
imageWand = imread(pathWand);

red_comp_pflanze = imagePflanze;
red_comp_pflanze(:,:,2) = 0;
red_comp_pflanze(:,:,3) = 0;
imwrite(red_comp_pflanze, 'result\red_comp_pflanze.bmp');

green_comp_pflanze = imagePflanze;
green_comp_pflanze(:,:,1) = 0;
green_comp_pflanze(:,:,3) = 0;
imwrite(green_comp_pflanze, 'result\green_comp_pflanze.bmp');

blue_comp_pflanze = imagePflanze;
blue_comp_pflanze(:,:,1) = 0;
blue_comp_pflanze(:,:,2) = 0;
imwrite(blue_comp_pflanze, 'result\blue_comp_pflanze.bmp');

red_comp_wand = imageWand;
red_comp_wand(:,:,2) = 0;
red_comp_wand(:,:,3) = 0;
imwrite(red_comp_wand, 'result\red_comp_wand.bmp');

green_comp_wand = imageWand;
green_comp_wand(:,:,1) = 0;
green_comp_wand(:,:,3) = 0;
imwrite(green_comp_wand, 'result\green_comp_wand.bmp');

blue_comp_wand = imageWand;
blue_comp_wand(:,:,1) = 0;
blue_comp_wand(:,:,2) = 0;
imwrite(blue_comp_wand, 'result\blue_comp_wand.bmp');

figure
subplot(2,2,1);
imshow(imagePflanze);
title('Original');
subplot(2,2,2);
imshow(red_comp_pflanze);
title('Rot-Komponente');
subplot(2,2,3);
imshow(green_comp_pflanze);
title('Grün-Komponente');
subplot(2,2,4);
imshow(blue_comp_pflanze);
title('Blau-Komponente');

figure
subplot(2,2,1);
imshow(imageWand);
title('Original');
subplot(2,2,2);
imshow(red_comp_wand);
title('Rot-Komponente');
subplot(2,2,3);
imshow(green_comp_wand);
title('Grün-Komponente');
subplot(2,2,4);
imshow(blue_comp_wand);
title('Blau-Komponente');

fram1 = imagePflanze(:, :, 1);
fram2 = imagePflanze(:, :, 2);
fram3 = imagePflanze(:, :, 3);

fram4 = imageWand(:, :, 1);
fram5 = imageWand(:, :, 2);
fram6 = imageWand(:, :, 3);

imwrite(fram1, 'result\pflanze_red_Channel.bmp');
imwrite(fram2, 'result\pflanze_green_Channel.bmp');
imwrite(fram3, 'result\pflanze_blue_Channel.bmp');

imwrite(fram4, 'result\wand_red_Channel.bmp');
imwrite(fram5, 'result\wand_green_Channel.bmp');
imwrite(fram6, 'result\wand_blue_Channel.bmp');

figure
subplot(2,2,1);
imshow(imagePflanze);
title('Original');
subplot(2,2,2);
imshow(fram1);
title('Rot-Kanal');
subplot(2,2,3);
imshow(fram2);
title('Grün-Kanal');
subplot(2,2,4);
imshow(fram3);
title('Blau-Kanal');

figure
subplot(2,2,1);
imshow(imageWand);
title('Original');
subplot(2,2,2);
imshow(fram4);
title('Rot-Kanal');
subplot(2,2,3);
imshow(fram5);
title('Grün-Kanal');
subplot(2,2,4);
imshow(fram6);
title('Blau-Kanal');