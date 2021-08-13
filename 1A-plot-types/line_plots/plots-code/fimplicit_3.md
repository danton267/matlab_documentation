function fimplicit_3()
fp = fimplicit(@(x,y) y.*sin(x) + x.*cos(y) - 1);
thumbnail_generator(gcf, 'line_plots', 'fimplicit', false);

fp.Color = 'r';
fp.LineStyle = '--';
fp.LineWidth = 2;
end