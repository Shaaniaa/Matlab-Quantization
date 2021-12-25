%usually the result of a quantization process that converts a continuous range (say, between 0 and 100%) to a discrete number of levels.
I = imread ('C:\Users\Dell\OneDrive\Pictures\Apple.jpg'); %local directory path of Apple Image

subplot(2,3,1) %there are 2 rows, 3 column in subplot and and 3rd parameter which is 1 mean i am placing original image on 1st position
imshow(I) % (, represent and so the no of comma u add it will represent and like how many operations u want separated by and which is comma
title('Original')

% Quantized image 
[r,c,s] = size(I);
N=5; %step size is 5 , if we make step size 0 then we will get black image,  
y= zeros(size(I)); %make zero matrix according to size of I image, the zero matrix is black can 

%1:N:r -> start from first position take step size N and go till last row
%1:N:c -> start from first position take step size N and go till last
%column
% : the color channel of Image I remain as it is by :
y(1:N:r,1:N:c,:) = I(1:N:r,1:N:c,:);
%figure  % if i write figure keyword then output image will be displayed in new figure
%to show output image in canvas of subplot i commented figure keyword

subplot(2,3,2)
imshow(y*0.01) %displaying on black canvas
title('Quantized image-1')

z = y(1:N:r,1:N:c,:);
%figure
subplot(2,3,3) % (2 row, 3 column ) of subplot and position of this image display is 3
imshow(z*0.01) %without displaying it on black canvas
title('Quantized image-2')