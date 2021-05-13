clc
clear workspace
close all

pathPflanze = 'images\pflanze_original.bmp';
pathWand = 'images\wand_original.bmp';
imagePflanze = imread(pathPflanze);
imageWand = imread(pathWand);

run(pathPflanze, imagePflanze, 'pflanze');
run(pathWand, imageWand, 'wand');

function run(path, image, file)
    ti=size(image);
    figure
    imshow(image);
    title(['Orginales Bild : ',path])
    xlabel(['Bildauflösung : ',num2str(ti(2)),'x',num2str(ti(1))])
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

    figure
    subplot(131)
    imshow(img_R)
    title('Komponente R')
    subplot(132)
    imshow(img_G)
    title('Komponente G')
    subplot(133)
    imshow(img_B)
    title('Komponente B')
    img_Y(:,:,1)=Y;
    img_Y(:,:,2)=Y;
    img_Y(:,:,3)=Y;
    name = strcat('result\y_',file,'.bmp');
    imwrite(img_Y, name);

    figure
    imshow(img_Y);
    title('Luminanz Y')
    img_Cb(:,:,1)=Y;
    img_Cb(:,:,2)=Y;
    img_Cb(:,:,3)=Y;

    img_Cb(:,:,1)=1.402*(-128);                        
    img_Cb(:,:,2)=-0.34414*(Cb-128)-0.71414*(-128);    
    img_Cb(:,:,3)=1.772*(Cb-128);  
    name = strcat('result\cb_',file,'.bmp');
    imwrite(img_Cb, name);

    figure
    imshow(img_Cb);
    title('Chrominance blau(Cb)')

    img_Cr(:,:,1)=1.402*(Cr-128);                  
    img_Cr(:,:,2)=-0.34414*(-128)-0.71414*(Cr-128);  
    img_Cr(:,:,3)=1.772*(-128); 
    name = strcat('result\cr_',file,'.bmp');
    imwrite(img_Cr, name);

    figure
    imshow(img_Cr);
    title('Chrominanz rot (Cr)')
end
