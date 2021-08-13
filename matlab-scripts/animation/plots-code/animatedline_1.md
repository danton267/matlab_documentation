function animatedline_1()
x = [1 2];
y = [1 2];
h = animatedline(x,y,'Color','r','LineWidth',3);
thumbnail_generator(gcf, 'animation', 'animatedline', false);

end