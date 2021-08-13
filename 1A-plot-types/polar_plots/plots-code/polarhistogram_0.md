function polarhistogram_0()
theta = [0.1 1.1 5.4 3.4 2.3 4.5 3.2 3.4 5.6 2.3 2.1 3.5 0.6 6.1];
polarhistogram(theta,6);
thumbnail_generator(gcf, 'polar_plots', 'polarhistogram', false);

end