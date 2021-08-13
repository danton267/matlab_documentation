function streamslice_0()
load wind
streamslice(x,y,z,u,v,w,[],[],5)
axis tight;
thumbnail_generator(gcf, 'volume_visualization', 'streamslice', false);

end