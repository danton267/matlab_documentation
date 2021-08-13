function image_2()
C = zeros(3,3,3);
C(:,:,1) = [.1 .2 .3; .4 .5 .6; .7 .8 .9];
image(C);
thumbnail_generator(gcf, 'images', 'image', false);

end