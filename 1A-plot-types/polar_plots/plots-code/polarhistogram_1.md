function polarhistogram_1()
theta = atan2(rand(100000,1)-0.5,2*(rand(100000,1)-0.5));
polarhistogram(theta,25);
thumbnail_generator(gcf, 'polar_plots', 'polarhistogram', false);

end