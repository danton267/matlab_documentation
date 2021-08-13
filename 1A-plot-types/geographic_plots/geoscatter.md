---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/geographic_plots/geoscatter/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/geoscatter.html
                    github: geographic_plots/geoscatter.md
                    ---

                    ## Create Geographic Scatter Plot Controlling Color, Size, and Shape of Markers 









> Set up latitude and longitude data. 

<pre class="mcode">lon = (-170:10:170);
lat = 50 * cosd(3*lon);</pre>

> Define data that controls the area of each marker. 

<pre class="mcode">A = 101 + 100*(sind(2*lon));</pre>

> Define data to control the color of each marker.

<pre class="mcode">C = cosd(4*lon);</pre>

> Plot the data on a geographic scatter plot, specifying the marker size data and the color data. Specify the marker as a triangle, rather than the default circle.

<pre class="mcode">geoscatter(lat,lon,A,C,'^')</pre>

![](https://mathworks.com/help/examples/graphics/win64/CreateScatterPlotControllingSizeOfMarkersExample_01.png)

## Create Geographic Scatter Plot Specifying Basemap 









> Set up latitude and longitude data. 

<pre class="mcode">lon = (-170:10:170);
lat = 50 * cosd(3*lon);</pre>

> Define the data that controls the area of each marker. 

<pre class="mcode">A = 101 + 100*(sind(2*lon));</pre>

> Define the data that controls the color of each marker.

<pre class="mcode">C = cosd(4*lon);</pre>

> Create the scatter plot on a set of geographic axes, specifying the marker size data and the color data. The example specifies the marker as a triangle, rather than the default circle. 

<pre class="mcode">geoscatter(lat,lon,A,C,'^')</pre>

![](https://mathworks.com/help/examples/graphics/win64/CreateGeographicScatterPlotSpecifyingBasemapExample_01.png)

> Change the basemap of the geographic scatter plot.

<pre class="mcode">geobasemap colorterrain</pre>

![](https://mathworks.com/help/examples/graphics/win64/CreateGeographicScatterPlotSpecifyingBasemapExample_02.png)

