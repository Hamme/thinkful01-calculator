# first we get user inputs for our variables
# and convert them to Floats (they'll initially be strings).
puts "Please enter the cost of your meal (e.g., 22.45): $ "
meal_cost = Float(gets)
puts "Please enter tax rate as a percentage (e.g., 12.5 or 15): "
tax_percent = Float(gets)
puts "Please the tip percentage you'd like to leave (e.g., 18): "
tip_percent = Float(gets)

def multiple_percent(number1,number2)
	number1 * number2/100
end

 
tax_value     = multiple_percent(meal_cost,tax_percent)
meal_with_tax = meal_cost + tax_value
tip_value     = multiple_percent(meal_with_tax,tip_percent)
total_cost    = meal_with_tax + tip_value
 
print "The pre-tax cost of your meal was $%.2f.\n" % meal_cost
print "At %d%%, tax for this meal is $%.2f.\n" % [tax_percent, tax_value]
print "For a %d%% tip, you should leave $%.2f.\n" % [tip_percent, tip_value]
print "The grand total for this meal is then $%.2f.\n" % total_cost