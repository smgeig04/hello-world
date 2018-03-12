#!/usr/bin/ruby
print "\n What is your quarterly water bill for Quarter 1 ? \n"
water1 = gets.chomp.to_f
print "\n What is your quarterly water bill for Quarter 2? \n"
water2 = gets.chomp.to_f
print "\n What is your quarterly water bill for Quarter 3? \n"
water3 = gets.chomp.to_f
puts "\n What is your quarterly water bill for Quarter 4? \n"
water4 = gets.chomp.to_f
avg = (water1 + water2 + water3 + water4) / 12
=begin
the program prompts the user for their quarterly water bills over the
last year. Then the program calculates the average for all of the bills
over the past year.
=end
	
end
if avg > 75.00
#if the average output is higher than $75.00, the program warns the user
	resp = "The Average Water Usage is too High! Your Average Bill is: "

elsif avg > 25.00
#if the average output is above $25.00, the program reminds them it's average
	resp = "A typical amount of water is being used, Your Average Bill is: "

else avg < 25.00
#if the average output is less than $25.00, the program praises the user
	resp = "You're amazing for saving so much water! Your Average Bill is: "

end

puts resp.to_s + avg.to_s