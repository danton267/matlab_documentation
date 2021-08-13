function polarplot_6()
theta = linspace(0,2*pi,25);
rho = 2*theta;
p = polarplot(theta,rho);
thumbnail_generator(gcf, 'polar_plots', 'polarplot', false);

p.Color = 'magenta';
p.Marker = 'square';
p.MarkerSize = 8;
end