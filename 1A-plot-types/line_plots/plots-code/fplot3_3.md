function fplot3_3()
fplot3(@(t)t, @(t)t, @(t)t)
hold on
fplot3(@(t)-t, @(t)t, @(t)-t)
hold off;
thumbnail_generator(gcf, 'line_plots', 'fplot3', true);

end