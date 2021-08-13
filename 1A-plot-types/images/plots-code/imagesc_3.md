function imagesc_3()
C = [1 2 3; 4 5 6; 7 8 9];
im = imagesc(C);
thumbnail_generator(gcf, 'images', 'imagesc', false);

im.AlphaData = .5;
end