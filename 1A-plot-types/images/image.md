---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/images/image/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/image.html
                    github: images/image.md
                    ---

                    ## Display Image of Matrix Data 









> Create matrix `C`. Display an image of the data in `C`. Add a colorbar to the graph to show the current colormap.

<pre class="mcode">C = [0 2 4 6; 8 10 12 14; 16 18 20 22];
image(C)
colorbar</pre>

![Figure contains an axes. The axes contains an object of type image.](https://mathworks.com/help/examples/graphics/win64/DisplayImageOfMatrixDataExample_01.png)

> By default, the `CDataMapping` property for the image is set to `'direct'` so `image` interprets values in `C` as indices into the colormap. For example, the bottom right pixel corresponding to the last element in `C`, 22, uses the 22nd color of the colormap.

> Scale the values to the full range of the current colormap by setting the `CDataMapping` property to `'scaled'` when creating the image.

<pre class="mcode">image(C,'CDataMapping','scaled')
colorbar</pre>

![Figure contains an axes. The axes contains an object of type image.](https://mathworks.com/help/examples/graphics/win64/DisplayImageOfMatrixDataExample_02.png)

> Alternatively, you can use the `imagesc` function to scale the values instead of using `image(C,'CDataMapping','scaled')`. For example, use `imagesc(C)`.

## Control Image Placement 









> Place the image so that it lies between 5 and 8 on the *x*-axis and between 3 and 6 on the *y*-axis.

<pre class="mcode">x = [5 8];
y = [3 6];
C = [0 2 4 6; 8 10 12 14; 16 18 20 22];
image(x,y,C)</pre>

![Figure contains an axes. The axes contains an object of type image.](https://mathworks.com/help/examples/graphics/win64/ControlImagePlacementExample_01.png)

> Notice that the pixel corresponding to C(1,1) is centered over the point (5,3). The pixel corresponding to C(3,4) is centered over the point (8,6). `image` positions and orients the rest of the image between those two points.

## Display Image of 3-D Array of True Colors 









> Create `C` as a 3-D array of true colors. Use only red colors by setting the last two pages of the array to zeros.

<pre class="mcode">C = zeros(3,3,3);
C(:,:,1) = [.1 .2 .3; .4 .5 .6; .7 .8 .9]</pre>

<pre class="mcode"><div class="codeoutput"><pre>C = 
C(:,:,1) =

    0.1000    0.2000    0.3000
    0.4000    0.5000    0.6000
    0.7000    0.8000    0.9000


C(:,:,2) =

     0     0     0
     0     0     0
     0     0     0


C(:,:,3) =

     0     0     0
     0     0     0
     0     0     0

</pre></div></pre>

> Display an image of the data in `C`. 

<pre class="mcode">image(C)</pre>

![Figure contains an axes. The axes contains an object of type image.](https://mathworks.com/help/examples/graphics/win64/DisplayImageOf3DArrayOfTrueColorsExample_01.png)

## Modify Image After Creation 









> Plot a line, and then create an image on top of the line. Return the image object.

<pre class="mcode">plot(1:3)
hold on
C = [1 2 3; 4 5 6; 7 8 9];
im = image(C);</pre>

![Figure contains an axes. The axes contains 2 objects of type line, image.](https://mathworks.com/help/examples/graphics/win64/ModifyImageAfterCreationExample_01.png)

> Make the image semitransparent so that the line shows through the image.

<pre class="mcode">im.AlphaData = 0.5;</pre>

![Figure contains an axes. The axes contains 2 objects of type line, image.](https://mathworks.com/help/examples/graphics/win64/ModifyImageAfterCreationExample_02.png)

## Read and Display JPEG Image File 









> Read a JPEG image file.

<pre class="mcode">C = imread('ngc6543a.jpg');</pre>

> `imread` returns a 650-by-600-by-3 array, `C`.

> Display the image. 

<pre class="mcode">image(C)</pre>

![Figure contains an axes. The axes contains an object of type image.](https://mathworks.com/help/examples/graphics/win64/ReadAndDisplaySampleImageExample_01.png)

## Add Image to Axes in 3-D View 









> Create a surface plot. Then, add an image under the surface. `image` displays the image in the *xy*-plane.

<pre class="mcode">Z = 10 + peaks;
surf(Z)
hold on 
image(Z,'CDataMapping','scaled')</pre>

![Figure contains an axes. The axes contains 2 objects of type surface, image.](https://mathworks.com/help/examples/graphics/win64/AddImageToAxesIn3DViewExample_01.png)

