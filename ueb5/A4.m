clc
clear workspace
close all

pathPflanze = 'images\pflanze_original.bmp';
pathWand = 'images\wand_original.bmp';
imagePflanze = imread(pathPflanze);
imageWand = imread(pathWand);

run(imagePflanze);
run(imageWand);

function run(image)
    ti=size(image);
    R=image(:,:,1);
    G=image(:,:,2);
    B=image(:,:,3);
    nullen=zeros(ti,'uint8');

    img_R=nullen;
    img_G=nullen;
    img_B=nullen;
    img_Y=nullen;
    img_Cb=nullen;
    img_Cr=nullen;

    img_R(:,:,1)=R;
    img_G(:,:,2)=G;
    img_B(:,:,3)=B;

    Y = 0.299*R+0.587*G+0.114*B;
    Cb= -0.1687*R-0.3313*G+0.5*B+128;
    Cr = 0.5*R-0.4187*G-0.0813*B+128;

    img_Y(:,:,1)=Y;
    img_Y(:,:,2)=Y;
    img_Y(:,:,3)=Y;

    figure
    imshow(img_Y);
    title('Luminanz Y')
    img_Cb(:,:,1)=Y;
    img_Cb(:,:,2)=Y;
    img_Cb(:,:,3)=Y;
end