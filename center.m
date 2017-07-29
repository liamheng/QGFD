%平移不变性
function output=center(input)
image1=rgb2gray(im2double(input));
m00=sum(sum(image1));
rat=sqrt(6e+3/m00);
input = imresize(input,rat,'bilinear');%尺度归一化
image2=rgb2gray(im2double(input));
m00=sum(sum(image2));
m10=0;
m01=0;
[row,col]=size(image2);
for i=1:row
    for j=1:col
        m10=m10+i*image2(i,j);
        m01=m01+j*image2(i,j);
    end
end
xc=m10/m00;%0阶1阶几何矩求质心
yc=m01/m00;
window=60;
output(:,:,1)=input(xc-window:xc+window,yc-window:yc+window,1);
output(:,:,2)=input(xc-window:xc+window,yc-window:yc+window,2);
output(:,:,3)=input(xc-window:xc+window,yc-window:yc+window,3);
end