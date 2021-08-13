function area_7()
area([1 5 3; 3 2 7; 1 5 3; 2 6 1]);
thumbnail_generator(gcf, 'line_plots', 'area', false);

newcolors = [0 0.5 1; 0.5 0 1; 0.7 0.7 0.7];
colororder(newcolors);
end