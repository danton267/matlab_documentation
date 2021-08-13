function feather_0()
t = -pi/2:pi/8:pi/2;
u = 10*sin(t);
v = 10*cos(t);
feather(u,v);
thumbnail_generator(gcf, 'vector_fields', 'feather', false);

end