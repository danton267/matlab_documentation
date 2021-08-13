function comet_2()
t = 0:pi/20:4*pi;
x1 = -cos(t) + cos(t/2);
y1 = -sin(t) - sin(t/2);
x2 =  cos(t) - cos(t/2);
y2 = -sin(t) - sin(t/2);
p = 0.25;
tiledlayout(1,2);
ax1 = nexttile;
ax2 = nexttile;

comet(ax1,x1,y1,p)
comet(ax2,x2,y2,p);
thumbnail_generator(gcf, 'animation', 'comet', false);

end