function polarplot_2()
theta = linspace(0,6*pi);
rho1 = theta/10;
polarplot(theta,rho1)

rho2 = theta/12;
hold on
polarplot(theta,rho2,'--')
hold off;
thumbnail_generator(gcf, 'polar_plots', 'polarplot', false);

end