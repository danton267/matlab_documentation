function stackedplot_5()
load outdoors
outdoors(1:3,:);
degreeSymbol = char(176);
newYlabels = {'RH (%)',['T (' degreeSymbol 'F)'],'P (in Hg)'};
stackedplot(outdoors,'Title','Weather Data','DisplayLabels',newYlabels);
thumbnail_generator(gcf, 'line_plots', 'stackedplot', false);

end