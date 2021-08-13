function pie3_0()
x = [1,3,0.5,2.5,2];
figure
pie3(x);
thumbnail_generator(gcf, 'data_distribution_plots', 'pie3', true);

explode = [0,1,0,0,0];
figure
pie3(x,explode);
thumbnail_generator(gcf, 'data_distribution_plots', 'pie3', true);

end