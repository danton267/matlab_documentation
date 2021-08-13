function image_0()
C = [0 2 4 6; 8 10 12 14; 16 18 20 22];
image(C)
colorbar;
thumbnail_generator(gcf, 'images', 'image', false);

image(C,'CDataMapping','scaled')
colorbar;
thumbnail_generator(gcf, 'images', 'image', false);

end