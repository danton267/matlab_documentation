function polarplot_3()
rho = 10:5:70;
polarplot(rho,'-o');
thumbnail_generator(gcf, 'polar_plots', 'polarplot', false);

end