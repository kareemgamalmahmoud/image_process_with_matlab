a1=imread('saed_al_sadani.jpg');
a1 = rgb2gray(a1);
a = im2double(a1);
[r,c]=size(a);
for i=r:-1:c
    for j=c:-1:1
        
        result(j,i) = a(i,j);
    end
end

subplot(1,2,1),imshow(a);
subplot(1,2,2),imshow(result);