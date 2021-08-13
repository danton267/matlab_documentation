function comet3_0()
[xmat,ymat,zmat] = peaks(100); 
xvec = xmat(:);
yvec = ymat(:);
zvec = zmat(:);
comet3(xvec,yvec,zvec);
thumbnail_generator(gcf, 'animation', 'comet3', true);

end