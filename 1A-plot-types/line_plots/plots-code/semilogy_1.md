function semilogy_1()
x = 1:100;
y1 = x.^2;
y2 = x.^3;
semilogy(x,y1,x,y2)
grid on;
thumbnail_generator(gcf, 'line_plots', 'semilogy', false);

end