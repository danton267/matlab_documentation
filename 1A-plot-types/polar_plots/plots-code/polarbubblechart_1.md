function polarbubblechart_1()
th = 1:10;
r = rand(1,10);
sz = rand(1,10);
polarbubblechart(th,r,sz,'red');
thumbnail_generator(gcf, 'polar_plots', 'polarbubblechart', false);

polarbubblechart(th,r,sz,'#7031BB');
thumbnail_generator(gcf, 'polar_plots', 'polarbubblechart', false);

c = 1:10;
polarbubblechart(th,r,sz,c);
thumbnail_generator(gcf, 'polar_plots', 'polarbubblechart', false);

end