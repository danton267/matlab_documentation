---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/scatter_and_bubble_charts/spy/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/spy.html
                    github: scatter_and_bubble_charts/spy.md
                    ---

                    ## Plot Sparsity Pattern 









> Plot the 60-by-60 sparse adjacency matrix of the connectivity graph of the Buckminster Fuller geodesic dome. This matrix also represents the carbon-60 molecule and a soccer ball.

<pre class="mcode">B = bucky;
spy(B)</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/matlab/win64/PlotSparsityPatternExample_01.png)

> Specify the color and marker.

<pre class="mcode">spy(B,'ro')</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/matlab/win64/PlotSparsityPatternExample_02.png)

> Also specify the marker size.

<pre class="mcode">spy(B,'ro',2)</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/matlab/win64/PlotSparsityPatternExample_03.png)

