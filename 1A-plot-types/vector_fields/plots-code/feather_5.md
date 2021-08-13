function feather_5()
tiledlayout(1,2)

% Left plot
ax1 = nexttile;
t = 0:pi/8:pi/2;
u1 = 10*sin(t);
v1 = 10*cos(t);
feather(ax1,u1,v1)
title(ax1,'Left Plot')

% Right plot
ax2 = nexttile;
u2 = zeros(5,1);
v2 = [1 -2 3 -4 5];
feather(ax2,u2,v2)
title(ax2,'Right Plot');
thumbnail_generator(gcf, 'vector_fields', 'feather', false);

end