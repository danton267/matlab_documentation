function histogram_4()
A = [0 0 1 1 1 0 0 0 0 NaN NaN 1 0 0 0 1 0 1 0 1 0 0 0 1 1 1 1];
C = categorical(A,[1 0 NaN],{'yes','no','undecided'});
h = histogram(C,'BarWidth',0.5);
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram', false);

end