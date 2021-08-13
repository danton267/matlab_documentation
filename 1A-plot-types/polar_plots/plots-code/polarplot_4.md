function polarplot_4()
theta = linspace(0,2*pi);
rho = sin(theta);
polarplot(theta,rho);
thumbnail_generator(gcf, 'polar_plots', 'polarplot', false);

rlim([-1 1]);
end