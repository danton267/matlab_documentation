function semilogy_2()
P = 1000; 
npayments = 240;  
rate = 0.08/12; 
mpayment = P*(rate*(1+rate)^npayments)/(((1+rate)^npayments) - 1);
x = 1:240;
y = x * mpayment;
semilogy(x,y);
grid on;
thumbnail_generator(gcf, 'line_plots', 'semilogy', false);

yticks([10 50 100 500 1000])
yticklabels({'$10','$50','$100','$500','$1000'})
xlabel ('Installment')
ylabel('Cumulate Cost');
end