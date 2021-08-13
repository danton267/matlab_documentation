---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/volume_visualization/slice/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/slice.html
                    github: volume_visualization/slice.md
                    ---

                    ## Volume Data Along Slices 









> Show volumetric data along slice planes that are orthogonal to each axis.

> Create slice planes through the volume defined by v=xe-x2-y2-z2, where *x*, *y*, and *z* range from `[-2,2]`. Create slice planes orthogonal to the *x*-axis at the values -1.2`, `0.8`, and `2` and orthogonal to the *z*-axis at the value `0`. Do not create any slice planes that are orthogonal to the *y*-axis by specifying an empty array.

<pre class="mcode">[X,Y,Z] = meshgrid(-2:.2:2);
V = X.*exp(-X.^2-Y.^2-Z.^2);

xslice = [-1.2,0.8,2];   
yslice = [];
zslice = 0;
slice(X,Y,Z,V,xslice,yslice,zslice)</pre>

![Figure contains an axes. The axes contains 4 objects of type surface.](https://mathworks.com/help/examples/graphics/win64/CreateSlicesThroughVolumeExample_01.png)

## Volume Data Along Surface 









> Show volumetric data along a nonplanar slice. Define the surface where you want to show the volumetric data.

> Create volume array `V` as the volume defined by v=xe-x2-y2-z2, where *x*, *y*, and *z* range from `[-5,5]`. Then, show a slice of the volume data along the surface defined by z=x2-y2. 

<pre class="mcode">[X,Y,Z] = meshgrid(-5:0.2:5);
V = X.*exp(-X.^2-Y.^2-Z.^2);

[xsurf,ysurf] = meshgrid(-2:0.2:2);
zsurf = xsurf.^2-ysurf.^2;
slice(X,Y,Z,V,xsurf,ysurf,zsurf)</pre>

![Figure contains an axes. The axes contains an object of type surface.](https://mathworks.com/help/examples/graphics/win64/VolumeDataAlongSurfaceExample_01.png)

## Specify Interpolation Method 









> Create a slice plane through volumetric data. Specify the interpolation method for the data values.

> Create a slice plane orthogonal to the *x*-axis at the value 0.8. Since the volume data is not defined for *x* values of 0.8, the `slice` function interpolates the nearby values. To use the nearest data point value, specify the interpolation method as `'nearest'`. 

<pre class="mcode">[X,Y,Z] = meshgrid(-2:2);
V = X.*exp(-X.^2-Y.^2-Z.^2);
xslice = 0.8;   
yslice = [];
zslice = [];
slice(X,Y,Z,V,xslice,yslice,zslice,'nearest')</pre>

![Figure contains an axes. The axes contains an object of type surface.](https://mathworks.com/help/examples/graphics/win64/SpecifyInterpolationMethodExample_01.png)

