function ezpolar_0()
figure
ezpolar('1+cos(t)');
thumbnail_generator(gcf, 'polar_plots', 'ezpolar', false);

end