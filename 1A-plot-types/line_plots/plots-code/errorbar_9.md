function errorbar_9()
x = linspace(0,10,10);
y = sin(x/2);
err = 0.3*ones(size(y));
e = errorbar(x,y,err);
thumbnail_generator(gcf, 'line_plots', 'errorbar', false);

e.Marker = '*';
e.MarkerSize = 10;
e.Color = 'red';
e.CapSize = 15;
end