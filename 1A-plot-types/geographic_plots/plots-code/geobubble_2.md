function geobubble_2()
tsunamis = readtable('tsunamis.xlsx');
cause = categorical(tsunamis.Cause);
geobubble(tsunamis.Latitude,tsunamis.Longitude,tsunamis.MaxHeight,cause);
thumbnail_generator(gcf, 'geographic_plots', 'geobubble', false);

end