clear;
i=imread('csgray.jpg');
f=fspecial("log");
i1=imfilter(i,f);
imshow(i1);
