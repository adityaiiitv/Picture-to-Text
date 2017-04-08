clear all;
close all;
I = imread('csgray.jpg');
level = graythresh(I);
BW = im2bw(I,level);
imshow(BW);
imwrite(BW,'csmonu.tif');
