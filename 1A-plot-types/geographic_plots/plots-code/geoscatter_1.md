function geoscatter_1()
lon = (-170:10:170);
lat = 50 * cosd(3*lon);
A = 101 + 100*(sind(2*lon));
C = cosd(4*lon);
geoscatter(lat,lon,A,C,'^');
thumbnail_generator(gcf, 'geographic_plots', 'geoscatter', false);

geobasemap colorterrain;
end