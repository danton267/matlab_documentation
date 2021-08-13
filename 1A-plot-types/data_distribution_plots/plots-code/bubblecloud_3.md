function bubblecloud_3()
c = categorical(["Pumpkin" "Princess" "Princess" "Princess" "Spooky Monster" ...
    "Spooky Monster" "Spooky Monster" "Spooky Monster" "Spooky Monster"]);
[sz,labels] = histcounts(c);
bubblecloud(sz,labels);
thumbnail_generator(gcf, 'data_distribution_plots', 'bubblecloud', false);

end