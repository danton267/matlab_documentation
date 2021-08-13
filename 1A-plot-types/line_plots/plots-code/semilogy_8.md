function semilogy_8()
x = 1:50;
y = x.^2;
y(20) = NaN;
semilogy(x,y);
thumbnail_generator(gcf, 'line_plots', 'semilogy', false);

end