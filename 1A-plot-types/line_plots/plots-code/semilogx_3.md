function semilogx_3()
x = logspace(-1,2,15);
y = 12 + x;
semilogx(x,y,'o','MarkerFaceColor',[0 0.447 0.741])
grid on;
thumbnail_generator(gcf, 'line_plots', 'semilogx', false);

end