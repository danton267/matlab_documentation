function streamribbon_0()
load wind
[sx,sy,sz] = meshgrid(80,20:10:50,0:5:15);
streamribbon(x,y,z,u,v,w,sx,sy,sz);
axis tight
shading interp
view(3);
camlight
lighting gouraud;
thumbnail_generator(gcf, 'volume_visualization', 'streamribbon', false);

end