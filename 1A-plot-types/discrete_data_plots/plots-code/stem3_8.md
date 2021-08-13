function stem3_8()
figure
X = linspace(-pi,pi,40);
Z = cos(X);
stem3(Z,'Marker','s',...
     'MarkerEdgeColor','m',...
     'MarkerFaceColor','g');
thumbnail_generator(gcf, 'discrete_data_plots', 'stem3', true);

end