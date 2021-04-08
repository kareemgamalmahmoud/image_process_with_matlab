a1=imread('saed_al_sadani.jpg');
a1 = rgb2gray(a1);
a = im2double(a1);
[r,c]=size(a);
for i=1:1:r
    k=1;
    for j=c:-1:1
        
        result(i,k) = a(i,j);
        k=k+1;
    end
end

subplot(1,2,1),imshow(a);
subplot(1,2,2),imshow(result);