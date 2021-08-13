function feather_3()
t = -pi/2:pi/8:pi/2;
u = 10*sin(t);
v = 10*cos(t);
feather(u,v,'r');
thumbnail_generator(gcf, 'vector_fields', 'feather', false);

end