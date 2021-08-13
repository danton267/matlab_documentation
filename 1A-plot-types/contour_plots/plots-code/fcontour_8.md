function fcontour_8()
fcontour(@(x,y) x.*sin(y) - y.*cos(x), [-2*pi 2*pi], 'LineWidth', 2);
grid on
title({'xsin(y) - ycos(x)','-2\pi < x < 2\pi and -2\pi < y < 2\pi'})
xlabel('x')
ylabel('y');
thumbnail_generator(gcf, 'contour_plots', 'fcontour', false);

ax = gca;
ax.XTick = ax.XLim(1):pi/2:ax.XLim(2);
ax.XTickLabel = {'-2\pi','-3\pi/2','-\pi','-\pi/2','0','\pi/2','\pi','3\pi/2','2\pi'};
ax.YTick = ax.YLim(1):pi/2:ax.YLim(2);
ax.YTickLabel = {'-2\pi','-3\pi/2','-\pi','-\pi/2','0','\pi/2','\pi','3\pi/2','2\pi'};
end