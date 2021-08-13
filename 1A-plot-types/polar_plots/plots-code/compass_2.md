function compass_2()
t = linspace(0,8*pi,100);
y = sin(2*t) + 2*sin(t+pi/2);
f = fft(y,10);
compass(f);
thumbnail_generator(gcf, 'polar_plots', 'compass', false);

end