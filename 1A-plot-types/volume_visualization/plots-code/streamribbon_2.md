function streamribbon_2()
t = 0:.15:15;
verts = {[cos(t)' sin(t)' (t/3)']};
twistangle = {cos(t)'};
streamribbon(verts,twistangle);
axis tight
shading interp
view(3)
camlight 
lighting gouraud;
thumbnail_generator(gcf, 'volume_visualization', 'streamribbon', false);

end