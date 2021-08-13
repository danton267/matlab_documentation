function semilogy_3()
x = linspace(1,1000,15);
y = (1./x) * 10000;
semilogy(x,y,'o','MarkerFaceColor',[0 0.447 0.741])
grid on;
thumbnail_generator(gcf, 'line_plots', 'semilogy', false);

end