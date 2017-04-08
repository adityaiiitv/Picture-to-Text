clear;
i=imread('cscancgray.jpg');
f=fspecial("unsharp");
i=imfilter(i,f);
%hist(i);
a=size(i);

level=graythresh(i);
level=level*255;

for k=1:a(1)
	for j=1:a(2)
	if( i(k,j)>=level) 
	i(k,j)=255;
	else
	i(k,j)=0;
	endif
endfor
endfor

imshow(i);
imwrite(i,'cscancmonu.tif');


