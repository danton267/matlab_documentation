function streamtube_0()
load wind
[sx,sy,sz] = meshgrid(80,20:10:50,0:5:15);
streamtube(x,y,z,u,v,w,sx,sy,sz);
view(3);
axis tight
shading interp;
camlight; 
lighting gouraud;
thumbnail_generator(gcf, 'volume_visualization', 'streamtube', false);

end