function fimplicit_1()
f = @(x,y) x.^2 + y.^2 - 3;
fimplicit(f,[-3 0 -2 2]);
thumbnail_generator(gcf, 'line_plots', 'fimplicit', false);

end