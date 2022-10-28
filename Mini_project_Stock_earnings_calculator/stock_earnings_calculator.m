 try 
    duration_of_investment= input("Duration of Investment in years:\n");
    initial_start_of_investment= input("Starting money of Investment:\n");
    Per_year_investment_increment_rate_percentage= input('Investment increment per year(percentage):\n');
    Per_month_return_on_investment_percentage= input('Invest returns per month(percentage):\n');
    Percentage_gain_per_year= 1;
    i1= initial_start_of_investment;
    for q=1:12
        Percentage_gain_per_year=Percentage_gain_per_year*(1+Per_month_return_on_investment_percentage/100);
    end
    Percentage_gain_per_year= (Percentage_gain_per_year-1)*100
    i2= initial_start_of_investment;
    Total_ammount_of_money_at_the_end_of_investment=0;
    for m=1:duration_of_investment
        
        for n=1:12
        i2= initial_start_of_investment+Total_ammount_of_money_at_the_end_of_investment;
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
 catch Error
     fprintf("Error message:")
     disp(Error.message)
 end