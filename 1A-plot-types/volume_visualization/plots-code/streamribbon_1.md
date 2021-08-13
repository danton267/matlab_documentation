function streamribbon_1()
load wind
[sx,sy,sz] = meshgrid(80,20:10:50,0:5:15);
verts = stream3(x,y,z,u,v,w,sx,sy,sz);
cav = curl(x,y,z,u,v,w);
spd = sqrt(u.^2 + v.^2 + w.^2).*.1;
streamribbon(verts,x,y,z,cav,spd);
axis tight
shading interp
view(3);
camlight; 
lighting gouraud;
thumbnail_generator(gcf, 'volume_visualization', 'streamribbon', false);

end