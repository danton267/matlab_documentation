function bubblechart_1()
x = 1:20;
y = rand(1,20);
sz = rand(1,20);
bubblechart(x,y,sz,'red');
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'bubblechart', false);

bubblechart(x,y,sz,'#7031BB');
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'bubblechart', false);

c = 1:20;
bubblechart(x,y,sz,c);
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'bubblechart', false);

end