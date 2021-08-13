function feather_1()
th = -pi/2:pi/16:0;
r = 10*ones(size(th));
[u,v] = pol2cart(th,r);
feather(u,v);
thumbnail_generator(gcf, 'vector_fields', 'feather', false);

end