function imagesc_4()
Z = 10 + peaks;
surf(Z)
hold on
imagesc(Z);
thumbnail_generator(gcf, 'images', 'imagesc', false);

end