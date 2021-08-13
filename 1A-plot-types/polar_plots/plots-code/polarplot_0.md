function polarplot_0()
theta = 0:0.01:2*pi;
rho = sin(2*theta).*cos(2*theta);
polarplot(theta,rho);
thumbnail_generator(gcf, 'polar_plots', 'polarplot', false);

end