function bubblechart3_1()
x = rand(1,20);
y = rand(1,20);
z = rand(1,20);
sz = rand(1,20);
bubblechart3(x,y,z,sz,'red');
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'bubblechart3', true);

bubblechart3(x,y,z,sz,'#7031BB');
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'bubblechart3', true);

c = 1:20;
bubblechart3(x,y,z,sz,c);
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'bubblechart3', true);

end