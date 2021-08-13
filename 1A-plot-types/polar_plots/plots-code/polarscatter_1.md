function polarscatter_1()
th = linspace(0,2*pi,20);
r = rand(1,20);
sz = 75;
polarscatter(th,r,sz,'filled');
thumbnail_generator(gcf, 'polar_plots', 'polarscatter', false);

end