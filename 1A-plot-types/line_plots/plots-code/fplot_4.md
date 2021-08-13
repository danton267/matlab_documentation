function fplot_4()
fp = fplot(@(x) sin(x));
thumbnail_generator(gcf, 'line_plots', 'fplot', false);

fp.LineStyle = ':';
fp.Color = 'r';
fp.Marker = 'x';
fp.MarkerEdgeColor = 'b';
end