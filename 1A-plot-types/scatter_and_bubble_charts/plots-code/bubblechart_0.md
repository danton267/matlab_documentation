function bubblechart_0()
x = 1:20;
y = rand(1,20);
sz = rand(1,20);
bubblechart(x,y,sz);
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'bubblechart', false);

end