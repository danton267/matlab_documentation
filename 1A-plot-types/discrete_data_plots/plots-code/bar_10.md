function bar_10()
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(y,'FaceColor',[0 .5 .5],'EdgeColor',[0 .9 .9],'LineWidth',1.5);
thumbnail_generator(gcf, 'discrete_data_plots', 'bar', false);

end