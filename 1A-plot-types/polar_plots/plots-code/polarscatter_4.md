function polarscatter_4()
th = pi/6:pi/6:2*pi;
r1 = rand(12,1);
polarscatter(th,r1,'filled')

hold on 
r2 = rand(12,1);
polarscatter(th,r2,'filled')
hold off

legend('Series A','Series B');
thumbnail_generator(gcf, 'polar_plots', 'polarscatter', false);

end