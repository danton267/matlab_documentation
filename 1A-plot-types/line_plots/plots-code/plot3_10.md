function plot3_10()
t = 0:pi/500:pi;
xt(1,:) = sin(t).*cos(10*t);
yt(1,:) = sin(t).*sin(10*t);
zt = cos(t);
plot3(xt,yt,zt,'-o','MarkerIndices',200);
thumbnail_generator(gcf, 'line_plots', 'plot3', true);

end