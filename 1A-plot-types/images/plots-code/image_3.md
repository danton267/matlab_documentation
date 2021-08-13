function image_3()
plot(1:3)
hold on
C = [1 2 3; 4 5 6; 7 8 9];
im = image(C);
thumbnail_generator(gcf, 'images', 'image', false);

im.AlphaData = 0.5;
end