function errorbar_6()
x = 1:13;
y = datetime(2018,5,1,1:13,0,0);
err = hours(rand(13,1));
errorbar(x,y,err);
thumbnail_generator(gcf, 'line_plots', 'errorbar', false);

end