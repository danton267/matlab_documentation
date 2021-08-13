---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/volume_visualization/streamslice/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/streamslice.html
                    github: volume_visualization/streamslice.md
                    ---

                    ## Plot Streamlines in Slice Plane 









> Load the `wind` data set, which loads the three-dimensional arrays `u`, `v`, `w`, `x`, `y`, and `z`. Draw streamlines along the slice plane where `z = 5`.

<pre class="mcode">load wind
streamslice(x,y,z,u,v,w,[],[],5)
axis tight</pre>

![Figure contains an axes. The axes contains 94 objects of type line.](https://mathworks.com/help/examples/graphics/win64/CreateStreamSliceExample_01.png)

