#!/usr/bin/ruby
print "What is your subscription package?"
package = gets.chomp.to_s.upcase
if package == "A" or package == "B" or package == "C"
	puts "How many minutes were used?"
	minutes = gets.chomp.to_f
=begin
#Depending on the package type (A,B,or C), the customer can 
#figure out their bill for the current month.
=end
	#if package == "A"
	case package 
	when "A" 
		if minutes > 450.00
		print "\n #{((minutes-450)* 0.45) + 39.99} this month \n"
		 else
		puts "\n 39.99 this month"
		end
=begin
#if their minutes exceed 450 (the amount provided), they will be
#charged $0.45 per minute used. Otherwise, they are charged the normal
#amount of $39.99 per month.
=end
	#if package == "B"
	#case package == "B"		
	when "B"
		if minutes > 900.00
		puts "\n #{((minutes-900) * 0.40) + 59.99} this month"
		#minutes <= 900.00
	else
		puts "\n 59.99 this month"
	end
=begin
#if their minutes exceed 900 (the amount provided), they will be
#charged $0.40 per minute used. Otherwise, they are charged the normal
#amount of $59.99 per month.
=end
	when "C"
		puts "\n 69.99 this month"
	end
=begin
#Package C's plan offers unlimited minutes, so the charge per month
#will always be $69.99.
=end
	else
	puts "\n That is not one of our subscription packages \n"
	end