%Matlab code of Quaternion Generic Fourier Descriptor (GFD) 
%by Heng Li at Beijing Instituteof Technology
%Reference: Li H, Liu Z, Huang Y, et al. Quaternion generic Fourier 
%descriptor for color object recognition[J]. Pattern Recognition, 2015, 48(12): 3895-3903.
clear;
close all
%Image read
im1= im2double(imread('color_test.jpg'));
im2=imrotate(im1,90);
%2D Quaternion Fourier
figure('name','2D Quaternion Fourier');
subplot(2,2,1)
imshow(im1,'Border','tight'); 
subplot(2,2,2)
imshow(im2,'Border','tight'); 
qim1=convert(quaternion(im1(:,:,1), ...
                       im1(:,:,2), ...
                       im1(:,:,3)), 'double') ./ 256;
qim2=convert(quaternion(im2(:,:,1), ...
                       im2(:,:,2), ...
                       im2(:,:,3)), 'double') ./ 256;

fim1=abs(qfft2(qim1,unit(quaternion(1,1,1)),'L'));
fim2=abs(qfft2(qim2,unit(quaternion(1,1,1)),'L'));
subplot(2,2,3)
imagesc(log(fftshift(fim1)+1));
subplot(2,2,4)
imagesc(log(fftshift(fim2)+1));
%QGFD
figure('name','QGFD');
pcimg1=imc2p(im1);
%put into polar space
subplot(2,2,1),imshow(pcimg1,'Border','tight');  
pcimg2=imc2p(im2);%put into polar space
fpcimg2=fft2(pcimg2);
subplot(2,2,2), imshow(pcimg2,'Border','tight');  
qt_pcimg1 = convert(quaternion(pcimg1(:,:,1), ...
                       pcimg1(:,:,2), ...
                       pcimg1(:,:,3)), 'double') ./ 256;
qt_pcimg2 = convert(quaternion(pcimg2(:,:,1), ...
                       pcimg2(:,:,2), ...
                       pcimg2(:,:,3)), 'double') ./ 256;
pf1=abs(qfft2(qt_pcimg1,unit(quaternion(1,1,1)),'L'));
output1=log(fftshift(pf1)+1);
subplot(2,2,3), imagesc(output1); 
pf2=abs(qfft2(qt_pcimg2,unit(quaternion(1,1,1)),'L'));
output2=log(fftshift(pf2)+1);
subplot(2,2,4), imagesc(output2); 



