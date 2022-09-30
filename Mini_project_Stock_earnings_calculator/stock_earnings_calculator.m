duration_of_investment=7;
initial_start_of_investment=100000;
Per_year_investment_increment_rate_percentage=11;
Per_month_return_on_investment_percentage=16.89;
Percentage_gain_per_year=1;
i1=initial_start_of_investment
for q=1:12
    Percentage_gain_per_year=Percentage_gain_per_year*(1+Per_month_return_on_investment_percentage/100);
end
Percentage_gain_per_year=(Percentage_gain_per_year-1)*100
i2=initial_start_of_investment;
Total_ammount_of_money_at_the_end_of_investment=0;
for m=1:duration_of_investment
    
    for n=1:12
    i2=initial_start_of_investment+Total_ammount_of_money_at_the_end_of_investment;
    Total_ammount_of_money_at_the_end_of_investment=i2*(1+Per_month_return_on_investment_percentage/100);
    end
    initial_start_of_investment=initial_start_of_investment*(1+Per_year_investment_increment_rate_percentage/100);
end
Total_ammount_of_money_at_the_end_of_investment
Total_ammount_of_money_invested=0;
for p=1:duration_of_investment
    i3=i1*12;
    Total_ammount_of_money_invested=i3+Total_ammount_of_money_invested;
    i1=i1*(1+Per_year_investment_increment_rate_percentage/100);
end
Total_ammount_of_money_invested