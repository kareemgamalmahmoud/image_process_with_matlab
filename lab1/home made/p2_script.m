a1=imread('saed_al_sadani.jpg');
a = rgb2gray(a1);
[r,c]=size(a);

for i=1:1:r
    for j=1:1:c
        if a(i,j)<30
            result(i,j) = 0;
        elseif a(i,j)>100
            result(i,j) = 255;
        else
            result(i,j) = a(i,j);
        end    
    end
end

subplot(1,2,1),imshow(a);
subplot(1,2,2),imshow(result);