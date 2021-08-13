function polarplot_7()
Z = [2+3i 2 -1+4i 3-4i 5+2i -4-2i -2+3i -2 -3i 3i-2i];
polarplot(Z,'*');
thumbnail_generator(gcf, 'polar_plots', 'polarplot', false);

end