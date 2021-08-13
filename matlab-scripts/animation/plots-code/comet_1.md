function comet_1()
t = 0:pi/50:4*pi;
x = -sin(t) - sin(t/2);
y = -cos(t) + cos(t/2);
p = 0.5;
comet(x,y,p);
thumbnail_generator(gcf, 'animation', 'comet', false);

end