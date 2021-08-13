function geobubble_0()
tsunamis = readtable('tsunamis.xlsx');
tsunamis.Cause = categorical(tsunamis.Cause);
geobubble(tsunamis,'Latitude','Longitude', ...
    'SizeVariable','MaxHeight','ColorVariable','Cause');
thumbnail_generator(gcf, 'geographic_plots', 'geobubble', false);

end