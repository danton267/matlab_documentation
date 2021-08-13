function bar_12()
y = [1 3 5; 3 2 7; 3 4 2];
b = bar(y,'FaceColor','flat');
for k = 1:size(y,2)
    b(k).CData = k;
end;
thumbnail_generator(gcf, 'discrete_data_plots', 'bar', false);

end