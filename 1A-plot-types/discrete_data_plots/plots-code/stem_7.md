function stem_7()
figure
X = linspace(0,2*pi,25)';
Y = (cos(2*X));
stem(X,Y,'LineStyle','-.',...
     'MarkerFaceColor','red',...
     'MarkerEdgeColor','green');
thumbnail_generator(gcf, 'discrete_data_plots', 'stem', false);

end