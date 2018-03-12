#!/usr/bin/ruby
puts "How Many Students Are There?"
students = gets.to_i
for kid in(1..students) do

#this ensures that each student will take a turn answering the questions
	if students > 0.to_i then
	puts "Hello Student #{kid}"
puts "How Many Days Are There in the Weekend?"

validc = 'n'
validp ='n'	
valid = 'n'
until valid == 'y' do
	days = gets.chomp.to_i

#these 'valid' variables will provide loop access later in the code

case days
when 1..3
	valid = 'y'
	puts "How many hours did you spend studying for Calculus? You are not permitted to have studied for more than 5 hours"
#ensures that the only valid number of days are from 1-3
else
	valid = 'n'
puts "Sorry that is a higher length than the number of days in the weekend"
		end
	end
end
#if the user puts anything other than 1-3, the question loops until an acceptable answer is given


until validc == 'y' do
calc = gets.chomp.to_f
if calc > '5'.to_f
	puts "That is too many hours please try again"
	validc = 'n'

else
	validc = 'y'
puts "How many hours did you spend studying for Programming? You are not permitted to have studied for more than 5 hours"
		end
end
#if the user says they studied more than 5 hours, the question loops

until validp == 'y' do
pro = gets.chomp.to_f
if pro > '5'.to_f
	validp = 'n'
	puts "That is too many hours please try again"

else
	validp = 'y'
		
	end
end
#the same code as calculus, but for the programming variable

	avg = (calc + pro) / days
#gives the average number of hours studying for calculus and programming over the weekend
	if calc > pro
		puts "The student spent more time studying Calculus"
	elsif calc < pro
		puts "The student spent more time studying Programming"
	else
		puts "The student spent an equal amount of time for studying Calculus and Programming"
	end
#shows which class the student spent more hours studying for

	puts "The average number spent studying was #{avg} hours"
end