function plot3_7()
t = linspace(-10,10,1000);
xt = exp(-t./10).*sin(5*t);
yt = exp(-t./10).*cos(5*t);
p = plot3(xt,yt,t);
thumbnail_generator(gcf, 'line_plots', 'plot3', true);

p.LineWidth = 3;
end