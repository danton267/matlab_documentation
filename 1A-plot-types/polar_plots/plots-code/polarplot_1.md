function polarplot_1()
theta = linspace(0,360,50);
rho = 0.005*theta/10;
theta_radians = deg2rad(theta);
polarplot(theta_radians,rho);
thumbnail_generator(gcf, 'polar_plots', 'polarplot', false);

end