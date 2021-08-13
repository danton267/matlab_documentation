function geobubble_1()
tsunamis = readtable('tsunamis.xlsx');
geobubble(tsunamis.Latitude,tsunamis.Longitude,tsunamis.MaxHeight);
thumbnail_generator(gcf, 'geographic_plots', 'geobubble', false);

end