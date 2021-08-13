function fimplicit_0()
fimplicit(@(x,y) x.^2 - y.^2 - 1);
thumbnail_generator(gcf, 'line_plots', 'fimplicit', false);

end