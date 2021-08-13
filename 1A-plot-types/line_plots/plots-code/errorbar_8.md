function errorbar_8()
x = linspace(0,2,15);
y = exp(x);
err = 0.3*ones(size(y));
errorbar(x,y,err,'CapSize',18);
thumbnail_generator(gcf, 'line_plots', 'errorbar', false);

end