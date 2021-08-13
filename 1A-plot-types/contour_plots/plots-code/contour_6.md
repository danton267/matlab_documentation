function contour_6()
Z = peaks;
Z(:,26) = NaN;
contour(Z);
thumbnail_generator(gcf, 'contour_plots', 'contour', false);

end