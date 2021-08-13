function histogram2_3()
h = histogram2(randn(1000,1),randn(1000,1),[12 12],'FaceColor','flat');
colorbar;
thumbnail_generator(gcf, 'data_distribution_plots', 'histogram2', false);

end