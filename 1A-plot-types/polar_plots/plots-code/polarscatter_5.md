function polarscatter_5()
th = pi/6:pi/6:2*pi;
r = rand(12,1);
ps = polarscatter(th,r,'filled');
thumbnail_generator(gcf, 'polar_plots', 'polarscatter', false);

ps.Marker = 'square';
ps.SizeData = 200;
ps.MarkerFaceColor = 'red';
ps.MarkerFaceAlpha = .5;
end