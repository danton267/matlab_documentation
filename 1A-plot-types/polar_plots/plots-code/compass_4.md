function compass_4()
u = [3 5 -4 -3 5];
v = [5 1 3 -2 -6];
c = compass(u,v);
thumbnail_generator(gcf, 'polar_plots', 'compass', false);

c1 = c(1);
c1.LineWidth = 2;
c1.Color = 'r';
end