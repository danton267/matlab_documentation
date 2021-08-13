function geoplot_4()
latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;
geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage])
geolimits([45 62],[-149 -123]);
thumbnail_generator(gcf, 'geographic_plots', 'geoplot', false);

geobasemap colorterrain;
end