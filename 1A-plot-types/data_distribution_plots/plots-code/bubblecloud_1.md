function bubblecloud_1()
n = [58 115 81 252 200 224 70 120 140];
flavs = ["Rum" "Pumpkin" "Mint" "Vanilla" "Chocolate" ...
    "Strawberry" "Twist" "Coffee" "Cookie"];
bubblecloud(n,flavs);
thumbnail_generator(gcf, 'data_distribution_plots', 'bubblecloud', false);

ages = categorical(["40-90+" "5-15" "16-39" "40-90+" ...
   "5-15" "16-39" "5-15" "16-39" "40-90+"]);
ages = reordercats(ages,["5-15" "16-39" "40-90+"] );
b = bubblecloud(n,flavs,ages);
b.LegendTitle = 'Age Range';
thumbnail_generator(gcf, 'data_distribution_plots', 'bubblecloud', false);

end