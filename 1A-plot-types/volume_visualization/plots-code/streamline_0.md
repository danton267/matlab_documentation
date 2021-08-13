function streamline_0()
[x,y] = meshgrid(0:0.1:1,0:0.1:1);
u = x;
v = -y;
figure
quiver(x,y,u,v)

startx = 0.1:0.1:1;
starty = ones(size(startx));
streamline(x,y,u,v,startx,starty);
thumbnail_generator(gcf, 'volume_visualization', 'streamline', false);

end