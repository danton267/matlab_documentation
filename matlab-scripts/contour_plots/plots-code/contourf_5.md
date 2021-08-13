function contourf_5()
Z = peaks;
[M,c] = contourf(Z);
c.LineWidth = 3;
thumbnail_generator(gcf, 'contour_plots', 'contourf', false);

end