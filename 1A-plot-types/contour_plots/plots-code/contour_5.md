function contour_5()
Z = peaks;
[M,c] = contour(Z);
c.LineWidth = 3;
thumbnail_generator(gcf, 'contour_plots', 'contour', false);

end