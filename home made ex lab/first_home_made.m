image = imread('pout.tif');
[r,c] = size(image);
imshow(image);
th = mean2(image);

done = false;
while ~done

    g1 = image > th;
    g2 = ~g1;
    
    m1 = mean(image(g1));
    m2 = mean(image(g2));
    
    new_th = (m1+m2)/2;
    
    done = abs(th - new_th) < 0.5;
    th = new_th;
    
end

b = image > th;
b = im2uint8(b);

figure;
imshow(b);

[labeledImage,no_of_objects]=bwlabel(b , 8);

objarea = cat(1,measurments.Area);
objdiameter = cat(1,measurments.EquivDiameter);
objratio = sum(objarea)/(r*c - sum(objarea));




