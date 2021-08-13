function semilogy_0()
x = 1:100;
y = x.^2;
semilogy(x,y)
grid on;
thumbnail_generator(gcf, 'line_plots', 'semilogy', false);

end