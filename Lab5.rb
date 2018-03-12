#!/usr/bin/ruby
puts "Number of testtakers today? Our maximum capacity is ten students"
students = gets.to_i

if students > 10 then
	puts "That is over our limit for testtakers"
end
#this if statement stops the amount of testakers exceeding maximum capacity
arr=['A','B','D','A','B','B','B','C','C','D']
#an array that shows the answers to the test
arr2= Array.new(10)
#initiates a new array 'arr2' that has a method length of 10
passed=0.0 # keeps track of number of students who got at least 9 qns correct
for st in(1..students) do # loop to process all students
correct = 0
wrong = 0
puts "Welcome  Student #{st} "
puts "Please put down A, B, C, or D for the following questions. Good Luck!"
#lets the user know that the acceptable answers are A,B,C, or D

counter = 0
until counter == 10 do
=begin
	set counter to go from 0 until it hits a method length of 10 so the user can 
	place variables (answers)
	to answer the 10 given questions
=end
valid = 'n'
until valid == 'y' do
=begin
we are establishing two different valids to ensure two different outcomes in the
upcoming if statement
=end
ans = gets.chomp.upcase
if ans == 'A' or ans =='B' or ans =='C' or ans == 'D'
	valid = 'y'
	puts "valid answer"
else
=begin
by setting valid with an until statement, we are creating a loop until the user
answers one of the acceptable choices of A,B,C, or D.
=end
#end
	valid = 'n'
	puts "invalid answer given"
end
end

	
arr2[counter] = ans
=begin
with counter as the method for arr2 and equaling 'ans', we are able to connect
the given input in ans, with the array so they can answer the 10 questions
=end
if arr[counter] == arr2[counter]
		correct = correct + 1
=begin
		let arr[counter2]=arr2[counter2] so we can compare the given answers with
		the correct answers
=end
	else
		wrong = wrong + 1

	end
#this ensures that counter2 goes up to 10 lines of input and then stops
=begin
adds up the lines that count under correct and wrong, and then shows the user
the amount considered right and wrong on their test
=end
counter = counter + 1
end
puts "you got: " + correct.to_s + " right and you got: " + wrong.to_s + " wrong"
if correct >= 9 # we check after all answers are entered for a studenty
	passed=passed+1
	puts "Congratulations You Passed!"
else
	puts "Sorry you did not have a passing grade, please come back and retake the exam another day"
end

end
percentpassed=100*passed/students

puts "#{percentpassed}\%  Students passed the test"