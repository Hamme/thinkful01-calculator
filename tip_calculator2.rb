#! /usr/bib/ruby

puts "what is the pre-tax value of your meal?"
meal = Float(gets)

puts "what is the current tax rate?"
tax  = Float(gets)

puts "how much would you like to tip?"
tip  = Float(gets)

tax_value = meal * tax
meal_with_tax = meal + tax_value
tip_value = meal_with_tax * tip
total_cost = meal + tax_value + tip_value

=begin
print "my-computer$: ruby tip_calculator1.rb \n
      The pre-tax cost of your meal was #{meal} \n
      At 12%, tax for this meal is #{tax_value} \n
      For a 20% tip, you should leave #{tip_value} \n
      The grand total for this meal is then #{total_cost}.
     "
=end     

print "my-computer$: ruby tip_calculator1.rb \n"
print "The pre-tax cost of your meal was $%.2f. \n" % meal
print "At %d%%, tax for this meal is $%.2f. \n" % [tax*100, tax_value]
print "For a %d%% tip, you should leave $%.2f. \n" % [tip*100, tip_value]
print "The grand total for this meal is then $#{total_cost}. \n"    
