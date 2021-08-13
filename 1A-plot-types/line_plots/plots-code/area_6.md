function area_6()
Y = [2 3 4; 6 1 5; 7 4 9];
a = area(Y);
thumbnail_generator(gcf, 'line_plots', 'area', false);

a(2).FaceColor = [0.2 0.6 0.5];
a(2).EdgeColor = [0.63 0.08 0.18];
a(2).LineWidth = 2;
end