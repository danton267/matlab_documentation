function comet3_2()
[xmat,ymat,zmat] = peaks(50); 
xvec = xmat(:);
yvec = ymat(:);
zvec = zmat(:);
p = 0.25;
tiledlayout(1,2);
ax1 = nexttile;
ax2 = nexttile;

comet3(ax1,xvec,yvec,zvec,p)
comet3(ax2,yvec,xvec,zvec,p);
thumbnail_generator(gcf, 'animation', 'comet3', true);

end