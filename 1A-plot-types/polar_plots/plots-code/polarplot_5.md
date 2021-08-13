function polarplot_5()
theta = linspace(0,2*pi,25);
rho = 2*theta;
polarplot(theta,rho,'r-o');
thumbnail_generator(gcf, 'polar_plots', 'polarplot', false);

end