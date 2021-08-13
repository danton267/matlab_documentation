function fimplicit_2()
f1 = @(x,y) x.^2 + y.^2 - 1;
fimplicit(f1,':r')

hold on
f2 = @(x,y) x.^2 + y.^2 - 2;
fimplicit(f2,'--g','LineWidth',2)
hold off;
thumbnail_generator(gcf, 'line_plots', 'fimplicit', false);

end