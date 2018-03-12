#!/usr/bin/ruby
puts "How many random numbers should I generate?"
num = gets.chomp.to_i
arr = Array.new(num)


puts "What is the minimum value in the range of random values?"
min  = gets.chomp.to_i
puts "What is the maximum value in the range of random values?"
max = gets.chomp.to_i


#establishes random numbers that are then put into the array
	for val in(0..num-1) do
		
		#puts value into array
	arr[val] = Random.new.rand(min..max)
	end

	#sorts the array
	arrS = arr.sort


puts arrS
counter = 1
for i in 1 .. num-1
		if 
			#line detects change in value 
		arrS[i] == arrS[i-1] 
		counter = counter + 1
 		else  					#shows the unique values in each frequency
		puts "The frequency of " + arrS[i-1].to_s + "| #{"#" * counter}" 
		counter = 1

 		end
end
#shows the unique values if the next value is different from the previous one
puts "The frequency of " + arrS[num-1].to_s + "| #{"#" * counter}" 


#establishes the amount of unique numbers, and then counts them
unique = arrS.uniq.count
puts "Unique values: " + unique.to_s