function plot3_0()
t = 0:pi/50:10*pi;
st = sin(t);
ct = cos(t);
plot3(st,ct,t);
thumbnail_generator(gcf, 'line_plots', 'plot3', true);

end