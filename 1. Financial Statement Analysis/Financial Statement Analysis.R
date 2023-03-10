#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#profit for each month

monthly_profit = revenue - expenses
print(monthly_profit)

#profit after tax for each month (the tax rate is 30%)
tax_value = monthly_profit * 0.3

profit_after_tax = monthly_profit - tax_value
print(profit_after_tax)

#profit margin for each month
profit_margin = profit_after_tax / revenue
percent(profit_margin, accuracy = 1.)


#good months - where the profit after tax was greater than the mean for the year

mean_value = mean(profit_after_tax)
good_months = profit_after_tax > mean_value
print(good_months)

#bad months - where the profit after tax was less than the mean for the year
bad_months = profit_after_tax < mean_value
print(bad_months)


#the best month - where the profit after tax was max for the year
best_month = max(profit_after_tax)
print(best_month)

#- the worst month - where the profit after tax was min for the year
worst_month = min (profit_after_tax)
print(worst_month)

