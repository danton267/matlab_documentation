function comet_0()
t = 0:pi/100:2*pi;
y = sin(t);
x = cos(t);
comet(x,y);
thumbnail_generator(gcf, 'animation', 'comet', false);

end