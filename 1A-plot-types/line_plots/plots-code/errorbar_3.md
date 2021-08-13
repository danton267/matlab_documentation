function errorbar_3()
x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
err = [4 3 5 3 5 3 6 4 3 3];
errorbar(x,y,err,'both');
thumbnail_generator(gcf, 'line_plots', 'errorbar', false);

end