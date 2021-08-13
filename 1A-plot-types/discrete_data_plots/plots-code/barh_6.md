function barh_6()
x = [1 2 3];
vals = [2 3 6; 11 23 26];
b = barh(x,vals);
thumbnail_generator(gcf, 'discrete_data_plots', 'barh', false);

xtips1 = b(1).YEndPoints + 0.3;
ytips1 = b(1).XEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'VerticalAlignment','middle');
xtips2 = b(2).YEndPoints + 0.3;
ytips2 = b(2).XEndPoints;
labels2 = string(b(2).YData);
text(xtips2,ytips2,labels2,'VerticalAlignment','middle');
end