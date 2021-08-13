function plot3_4()
t = 0:pi/20:10*pi;
xt = sin(t);
yt = cos(t);
plot3(xt,yt,t,'o');
thumbnail_generator(gcf, 'line_plots', 'plot3', true);

end