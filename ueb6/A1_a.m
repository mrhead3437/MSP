clc
clear workspace
close all

pathPflanze = 'images\pflanze_original.bmp';
pathWand = 'images\wand_original.bmp';
imagePflanze = imread(pathPflanze);
imageWand = imread(pathWand);

pPf_gray = rgb2gray(imagePflanze);
pWand_gray = rgb2gray(imageWand);
imwrite(pPf_gray,'result\pflanze_gray.bmp');
imwrite(pWand_gray,'result\wand_gray.bmp');

run(pPf_gray, 'pflanze');
run(pWand_gray, 'wand');

function run(gray, file)
    H = [1 1 1; 1 1 1; 1 1 1]/9;
    Y = filter2(H,gray,'full')/255;
    figure
    subplot(1,2,2);
    imshow(Y);
    title("nachher");
    subplot(1,2,1);
    imshow(gray);
    title("vorher");
    name = strcat('result\',file,'_weich', '.bmp');
    imwrite(Y, name);
end