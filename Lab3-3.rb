#!/usr/bin/ruby
print "What is your residential status?"
print "\n Please put 'I' for in-state, or 'O' for out-of-state :"
status = gets.chomp.downcase
=begin
#prompts the user on whether they live in-state or out-of-state,
that way the program can calculate how much their tuition is per
semester.
=end
if 	status == "i"
	tuition = 3000
#the in-state tuition is $3000 per semester
	
	puts tuition.to_s

else
	tuition = 4500
#out-of-state tuition is $4500 per semester
	
	puts "#{tuition}"
end

print "Do you require room and board?"
	puts "\n Please put 'Y' for yes and 'N' for No :"
	room = gets.chomp.downcase

if room == "y"  and status == "i" 
#room and board for in-state students is $2500 per semester	
	puts "#{tuition + 2500.00}"

elsif room == "y" and status == "o"
#room and board for out-of-state students is $3500 per semester
	
	puts "#{tuition + 3500.00}"
	else 
		puts tuition.to_s
=begin
#the program calculates how much tuition is per semester plus the
amount for room and board
=end
end