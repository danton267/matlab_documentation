function image_4()
C = imread('ngc6543a.jpg');
image(C);
thumbnail_generator(gcf, 'images', 'image', false);

end