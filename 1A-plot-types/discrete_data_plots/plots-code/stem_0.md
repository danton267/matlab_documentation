function stem_0()
figure
Y = linspace(-2*pi,2*pi,50);
stem(Y);
thumbnail_generator(gcf, 'discrete_data_plots', 'stem', false);

end