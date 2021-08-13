function fplot_6()
fplot(@sin,[-2*pi 2*pi])
grid on
title('sin(x) from -2\pi to 2\pi')
xlabel('x');
ylabel('y');
thumbnail_generator(gcf, 'line_plots', 'fplot', false);

ax = gca;
ax.XTick = -2*pi:pi/2:2*pi;
ax.XTickLabel = {'-2\pi','-3\pi/2','-\pi','-\pi/2','0','\pi/2','\pi','3\pi/2','2\pi'};
end