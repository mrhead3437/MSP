clc
clear workspace
close all

pathPflanze = 'result\dct_pflanze.bmp';
pathWand = 'result\dct_wand.bmp';

dct_pf = imread(pathPflanze);
dct_wand = imread(pathWand);

run(16, dct_pf, 'pflanze', dct_wand, 'wand');
run(64, dct_pf, 'pflanze', dct_wand, 'wand');
run(128, dct_pf, 'pflanze', dct_wand, 'wand');

function run(gr, image1, file1, image2, file2)
    s1 = size(image1);
    pf_height = s1(1);
    pf_width = s1(2);

    s2 = size(image2);
    wand_height = s2(1);
    wand_width = s2(2);
    for rP = 1:pf_height
      for cP = 1:pf_width
        if image1(rP, cP) > gr
          image1(rP, cP) = 0;
        end
      end  
    end

    for rM = 1:wand_height
      for cW = 1:wand_width
        if image2(rM, cW) > gr
          image2(rM, cW) = 0;
        end
      end 
    end

    idct_pflanze = idct2(image1/255);
    name1 = strcat('result\idct_', file1,'_',int2str(gr),'.bmp');
    imwrite(idct_pflanze, name1);
    idct_wand = idct2(image2/255);
    name2 = strcat('result\idct_', file2,'_',int2str(gr),'.bmp');
    imwrite(idct_wand, name2);
end

