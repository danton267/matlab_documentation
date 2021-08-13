function comet3_1()
[xmat,ymat,zmat] = peaks(100); 
xvec = xmat(:);
yvec = ymat(:);
zvec = zmat(:);
p = 0.5;
comet3(xvec,yvec,zvec,p);
thumbnail_generator(gcf, 'animation', 'comet3', true);

end