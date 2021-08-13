function polarbubblechart_0()
th = linspace(0,2*pi,10);
r = rand(1,10);
sz = rand(1,10);
polarbubblechart(th,r,sz);
thumbnail_generator(gcf, 'polar_plots', 'polarbubblechart', false);

end