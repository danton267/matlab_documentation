---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/animation/animatedline/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/animatedline.html
                    github: animation/animatedline.md
                    ---

                    ## Display Line Animation 









## Specify Animated Line Color 









> Set the color of the animated line to red and set its line width to 3 points.

<pre class="mcode">x = [1 2];
y = [1 2];
h = animatedline(x,y,'Color','r','LineWidth',3);</pre>

![Figure contains an axes. The axes contains an object of type animatedline.](https://mathworks.com/help/examples/graphics/win64/SpecifyAnimatedLineColorExample_01.png)

## Set Maximum Number of Points 









## Add Points in Sets for Fast Animation 









## Use drawnow limitrate for Fast Animation 









## Control Animation Speed 









