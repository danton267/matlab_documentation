function geobubble_3()
tsunamis = readtable('tsunamis.xlsx');
colordata = categorical(tsunamis.Cause);
gb = geobubble(tsunamis.Latitude,tsunamis.Longitude,tsunamis.MaxHeight,colordata,'Title','Tsunamis');
thumbnail_generator(gcf, 'geographic_plots', 'geobubble', false);

gb.SizeLegendTitle = 'Max Height';
gb.ColorLegendTitle = 'Cause';
end