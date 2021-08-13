function semilogy_7()
x = 1:100;
y1 = x.^2;
y2 = x.^3;
slg = semilogy(x,y1,x,y2);
thumbnail_generator(gcf, 'line_plots', 'semilogy', false);

slg(1).LineWidth = 3;
slg(2).Color = [0.4 0 1];
end