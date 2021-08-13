function fplot_1()
xt = @(t) cos(3*t);
yt = @(t) sin(2*t);
fplot(xt,yt);
thumbnail_generator(gcf, 'line_plots', 'fplot', false);

end