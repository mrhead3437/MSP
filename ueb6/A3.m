clc
clear workspace
close all

pathPflanze = 'images\pflanze_original.bmp';
pathWand = 'images\wand_original.bmp';
imagePflanze = imread(pathPflanze);
imageWand = imread(pathWand);

pPf_gray = rgb2gray(imagePflanze);
pWand_gray = rgb2gray(imageWand);

dct_pflanze = dct2(pPf_gray)/255;
dct_wand = dct2(pWand_gray)/255;

s1 = size(dct_pflanze);
pf_height = s1(1);
pf_width = s1(2);

s2 = size(dct_wand);
wand_height = s2(1);
wand_width = s2(2);

mod_dct_pflanze = zeros(pf_height, pf_width);
mod_dct_wand = zeros(wand_height, wand_width);

for rP = 1:pf_height
  for cP = 1:pf_width
    if dct_pflanze(rP, cP) < 0
      continue;
    elseif dct_pflanze(rP, cP) > 255
      mod_dct_pflanze(rP, cP) = 255;
    else
      mod_dct_pflanze(rP, cP) = dct_pflanze(rP, cP);
    end
  end  
end

for rM = 1:wand_height
  for cW = 1:wand_width
    if dct_wand(rM, cW) < 0
      continue;
    elseif dct_wand(rM, cW) > 255
      mod_dct_wand(rM, cW) = 255;
    else
      mod_dct_wand(rM, cW) = dct_wand(rM, cW);
    end
  end  
end

figure
imshow(mod_dct_pflanze);
imwrite(dct_pflanze,'result\dct_pflanze.bmp');
figure
imshow(mod_dct_wand);
imwrite(dct_wand,'result\dct_wand.bmp');