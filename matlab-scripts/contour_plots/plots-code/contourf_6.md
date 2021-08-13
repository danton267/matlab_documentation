function contourf_6()
Z = peaks;
Z(:,26) = NaN;
contourf(Z);
thumbnail_generator(gcf, 'contour_plots', 'contourf', false);

end