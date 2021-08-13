function stackedplot_6()
load outdoors
outdoors(1:3,:);
s = stackedplot(outdoors);
thumbnail_generator(gcf, 'line_plots', 'stackedplot', false);

s.LineWidth = 2;
s.LineProperties;
s.LineProperties(2).PlotType = 'scatter';
s.LineProperties(3).PlotType = 'stairs';
s.AxesProperties;
end