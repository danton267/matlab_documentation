function geoplot_1()
latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;
geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage],'g-*')
geolimits([45 62],[-149 -123]);
thumbnail_generator(gcf, 'geographic_plots', 'geoplot', false);

text(latAnchorage,lonAnchorage,'Anchorage');
text(latSeattle,lonSeattle,'Seattle',...
    'HorizontalAlignment','right',...
    'VerticalAlignment','bottom');
end