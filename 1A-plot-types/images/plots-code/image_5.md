function image_5()
Z = 10 + peaks;
surf(Z)
hold on 
image(Z,'CDataMapping','scaled');
thumbnail_generator(gcf, 'images', 'image', false);

end