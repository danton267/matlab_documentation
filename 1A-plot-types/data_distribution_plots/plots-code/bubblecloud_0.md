function bubblecloud_0()
n = [58 115 81 252 180 124 40 80 50 20]';
loc = ["NJ" "NY" "MA" "OH" "NH" "ME" "CT" "PA" "RI" "VT"]';
plant = ["Plant A" "Plant A" "Plant A" "Plant A" ...
       "Plant A" "Plant A" "Plant A" "Plant B" "Plant B" "Plant B"]';
tbl = table(n,loc,plant,'VariableNames',["Mislabeled" "State" "Manufacturing Plant"]);
bubblecloud(tbl,"Mislabeled","State");
thumbnail_generator(gcf, 'data_distribution_plots', 'bubblecloud', false);

bubblecloud(tbl,"Mislabeled","State","Manufacturing Plant");
thumbnail_generator(gcf, 'data_distribution_plots', 'bubblecloud', false);

end