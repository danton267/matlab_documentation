function stem3_4()
figure
[X,Y] = meshgrid(0:.1:1);
Z = exp(X+Y);
stem3(X,Y,Z);
thumbnail_generator(gcf, 'discrete_data_plots', 'stem3', true);

end