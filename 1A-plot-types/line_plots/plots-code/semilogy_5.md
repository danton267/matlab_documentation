function semilogy_5()
y = [0.1 0.2 1 10 1000];
semilogy(y)
grid on;
thumbnail_generator(gcf, 'line_plots', 'semilogy', false);

y = [ 0.1    1     10
      0.2    2     20
      1.0    10    100
      10     100   1000
      1000   10000 100000];

semilogy(y)
grid on;
thumbnail_generator(gcf, 'line_plots', 'semilogy', false);

end