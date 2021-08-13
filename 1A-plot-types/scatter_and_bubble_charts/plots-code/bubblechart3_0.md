function bubblechart3_0()
x = rand(1,20);
y = rand(1,20);
z = rand(1,20);
sz = rand(1,20);
bubblechart3(x,y,z,sz);
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'bubblechart3', true);

end