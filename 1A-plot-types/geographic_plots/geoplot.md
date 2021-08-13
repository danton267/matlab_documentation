---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/geographic_plots/geoplot/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/geoplot.html
                    github: geographic_plots/geoplot.md
                    ---

                    ## Create Geographic Plot 









> Plot a straight line between two points on a map. Specify the endpoints of the line using the coordinates of Seattle and Anchorage. Specify latitude and longitude in degrees.

<pre class="mcode">latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;</pre>

> Plot the data on a map. Customize the appearance of the line using the line specification `'g-*'`. Adjust the latitude and longitude limits of the map using `geolimits`.

<pre class="mcode">geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage],'g-*')
geolimits([45 62],[-149 -123])</pre>

![](https://mathworks.com/help/examples/graphics/win64/CreateGeographicPlotrefpageExample_01.png)

## Add Text to Geographic Plot 









> Plot a straight line between two points on a map. Specify the endpoints of the line using the coordinates of Seattle and Anchorage. Specify latitude and longitude in degrees.

<pre class="mcode">latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;</pre>

> Plot the data using `geoplot`. Customize the appearance of the line using the line specification `'g-*'`. Adjust the latitude and longitude limits of the map using `geolimits`.

<pre class="mcode">geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage],'g-*')
geolimits([45 62],[-149 -123])</pre>

![](https://mathworks.com/help/examples/graphics/win64/AddTextToGeographicPlotExample_01.png)

> Identify Anchorage using the `text` function.

<pre class="mcode">text(latAnchorage,lonAnchorage,'Anchorage');</pre>

![](https://mathworks.com/help/examples/graphics/win64/AddTextToGeographicPlotExample_02.png)

> Identify Seattle using the `text` function. Adjust the alignment of the text label by specifying properties of the `Text` object.

<pre class="mcode">text(latSeattle,lonSeattle,'Seattle',...
    'HorizontalAlignment','right',...
    'VerticalAlignment','bottom');</pre>

![](https://mathworks.com/help/examples/graphics/win64/AddTextToGeographicPlotExample_03.png)

## Customize Individual Lines on Map 









> Specify the latitude and longitude coordinates of Seattle, Anchorage, and Point Barrow.

<pre class="mcode">latSeattle = 47.62;
lonSeattle = -122.33;

latAnchorage = 61.20;
lonAnchorage = -149.9;

latPtBarrow = 71.38;
lonPtBarrow = -156.47;</pre>

> Plot straight lines from Seattle to each of the other two cities. Draw a solid yellow line from Seattle to Anchorage and a dotted blue line between Seattle and Point Barrow. Adjust the latitude and longitude limits of the map using `geolimits`.

<pre class="mcode">geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage],'y-',...
    [latSeattle latPtBarrow],[lonSeattle lonPtBarrow],'b:')
geolimits([44 73],[-149 -123])</pre>

![](https://mathworks.com/help/examples/graphics/win64/PlotTwoLinesOnMaprefpageExample_01.png)

> Label each city on the map using the `text` function.

<pre class="mcode">text(latAnchorage,lonAnchorage,'Anchorage');
text(latPtBarrow,lonPtBarrow,'Point Barrow');
text(latSeattle,lonSeattle,'Seattle',...
    'VerticalAlignment','bottom');</pre>

![](https://mathworks.com/help/examples/graphics/win64/PlotTwoLinesOnMaprefpageExample_02.png)

## Use Chart Line Properties to Customize Appearance of the Line 









> Plot a straight line between two points on a map. Specify the endpoints of the line using the coordinates of Seattle and Anchorage. Specify latitude and longitude in degrees.

<pre class="mcode">latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;</pre>

> Plot the data using `geoplot`. Adjust the latitude and longitude limits of the map using `geolimits`. Customize the appearance of the line by specifying the `LineWidth` and `Color` properties.

<pre class="mcode">geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage],...
    'LineWidth',2,'Color',[.6 0 0])
geolimits([45 62],[-149 -123])</pre>

![](https://mathworks.com/help/examples/graphics/win64/UseChartLinePropsToCustomizeAppearanceLineExample_01.png)

## Change Basemap Used in Geographic Plot 









> Plot a straight line between two points on a map. Specify the endpoints of the line using the coordinates of Seattle and Anchorage. Specify latitude and longitude in degrees.

<pre class="mcode">latSeattle = 47.62;
lonSeattle = -122.33;
latAnchorage = 61.20;
lonAnchorage = -149.9;</pre>

> Plot the data using `geoplot`. Adjust the latitude and longitude limits of the map using `geolimits`.

<pre class="mcode">geoplot([latSeattle latAnchorage],[lonSeattle lonAnchorage])
geolimits([45 62],[-149 -123])</pre>

![](https://mathworks.com/help/examples/graphics/win64/ChangeBasemapUsedInGeographicPlotExample_01.png)

> Change the basemap used in the plot using the `geobasemap` function.

<pre class="mcode">geobasemap colorterrain</pre>

![](https://mathworks.com/help/examples/graphics/win64/ChangeBasemapUsedInGeographicPlotExample_02.png)

