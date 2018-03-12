#!/usr/bin/ruby

order=0
until order>0 do #this ensures the number of orders, and that there is at least one order
	puts "How many orders are to be place?"
	order = gets.chomp.to_i
end

def getSpools(ord) #establishes an empty array so that all of data can be output at once

	data=[]



puts "order #{ord}" #shows what order # is being prompted

puts "How many spools were ordered?"
spoo = gets.chomp.to_i
	data[0]=spoo


	if spoo <= 0
		until order > 0
			puts "Sorry that is invalid"
			order = gets.chomp.to_i
		end
	end


puts "How many spools are in stock?"
stock = gets.chomp.to_i
	data[1]=stock


	if stock < 0
		until stock > 0
			puts "Sorry that is invalid"
			stock = gets.chomp.to_i
		end
	end


puts "Are special shipping charges required? (y or n): "
char = gets.chomp.to_s
	data[2]=char
	amt = 0
	data[3]=amt


#establishes if there are shipping charges required, if so, the user is prompted with the number of shipping charges
	if char == "y"
		puts "Enter the amount of any special shipping charges: "
		amt = gets.chomp.to_i
		
	else
		puts "Thank you"
	end


	if amt < 0
		until amt > 0
			puts "Sorry that is invalid"
			amt = gets.chomp.to_i
		end
	end
	return data
end


#shows the information from the input that is based on the data array
def OrderResults(data)

	puts "Order Summary"
	puts "==================="
	puts "Items ordered: #{data[0]}"
	puts "Ready to ship: #{data[1]}"
	if data[2] == "y"
	puts "On backorder: #{data[0]-data[1]}\n"
	end

	puts "Subtotal: $#{data[1] * 100}"
	puts "Shipping: $#{data[1] * 10}"
	puts "Total Due: $#{(data[1] * 100) + (data[1] * 10)}"
end

for ord in (1..order) do

data=getSpools(ord)
OrderResults(data)
end