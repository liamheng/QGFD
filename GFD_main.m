%Matlab code of Generic Fourier descriptor (GFD) 
%by Heng Li at Beijing Instituteof Technology
%Reference:D. Zhang and G. Lu, "Shape-based image retrieval using generic 
%Fourier descriptor," Signal Processing: Image Communication, vol. 17, pp. 825-848, 2002.
clear;
close all
%Image read
input=im2double(imread('color_test.jpg'));%gray image read
im1=rgb2gray(input);
im2=imrotate(rgb2gray(input),90);
%2D Fourier
figure('name','2D Fourier');
subplot(2,2,1)
imshow(im1,'Border','tight'); 
subplot(2,2,2)
imshow(im2,'Border','tight'); 
fim1=abs(fft2(im1));
fim2=abs(fft2(im2));
subplot(2,2,3)
imagesc(log(fftshift(fim1)+1));
subplot(2,2,4)
imagesc(log(fftshift(fim2)+1));
%GFD
figure('name','GFD');
pcimg1=imc2p(im1);%put into polar space
subplot(2,2,1),imshow(pcimg1,'Border','tight');  
pcimg2=imc2p(im2);%put into polar space
fpcimg2=fft2(pcimg2);
subplot(2,2,2), imshow(pcimg2,'Border','tight');  

pf1=abs(fft2(pcimg1));
output1=log(fftshift(pf1)+1);
subplot(2,2,3), imagesc(output1); 
pf2=abs(fft2(pcimg2));
output2=log(fftshift(pf2)+1);
subplot(2,2,4), imagesc(output2); 

