function plot3_5()
t = 0:pi/20:10*pi;
xt = sin(t);
yt = cos(t);
plot3(xt,yt,t,'-o','Color','b','MarkerSize',10,'MarkerFaceColor','#D9FFFF');
thumbnail_generator(gcf, 'line_plots', 'plot3', true);

end