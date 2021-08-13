function errorbar_7()
x = linspace(0,10,15);
y = sin(x/2);
err = 0.3*ones(size(y));
errorbar(x,y,err,'-s','MarkerSize',10,...
    'MarkerEdgeColor','red','MarkerFaceColor','red');
thumbnail_generator(gcf, 'line_plots', 'errorbar', false);

end