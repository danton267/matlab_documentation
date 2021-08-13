function polarscatter_2()
th = pi/4:pi/4:2*pi;
r = [19 6 12 18 16 11 15 15];
sz = 100*[6 15 20 3 15 3 6 40];
c = [1 2 2 2 1 1 2 1];
polarscatter(th,r,sz,c,'filled','MarkerFaceAlpha',.5);
thumbnail_generator(gcf, 'polar_plots', 'polarscatter', false);

end