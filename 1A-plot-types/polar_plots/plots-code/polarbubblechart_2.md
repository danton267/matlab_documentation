function polarbubblechart_2()
th = linspace(0,2*pi,10);
r = rand(1,10);
sz = rand(1,10);
polarbubblechart(th,r,sz);
thumbnail_generator(gcf, 'polar_plots', 'polarbubblechart', false);

bc = polarbubblechart(th,r,sz,'MarkerFaceAlpha',0.20);
thumbnail_generator(gcf, 'polar_plots', 'polarbubblechart', false);

bc.MarkerEdgeColor = [0.5 0 0.5];
end