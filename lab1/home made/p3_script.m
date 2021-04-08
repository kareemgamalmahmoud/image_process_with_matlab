a1=imread('saed_al_sadani.jpg');
a = rgb2gray(a1);
B = imrotate(a,180);

subplot(1,2,1),imshow(a);
subplot(1,2,2),imshow(B);