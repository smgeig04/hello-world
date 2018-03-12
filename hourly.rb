#/usr/bin/ruby
puts "What is the employee's name?"
Steven_Geiger = gets.chomp
#Whatever name you put will show up without a new line
puts "How many hours have they worked?"
Hours = gets.chomp
puts "#{Steven_Geiger} worked #{Hours.to_s} Hours "
#the number that was input will show how many hours that the employee worked
puts "What is their pay rate?"
pay_rate = gets
puts "What is their total gross pay?"
gross_pay= pay_rate.to_f* Hours.to_f
puts  gross_pay
#=begin
#the number given for pay rate will be multiplied by the amount
#of hours worked to show the employee's total gross pay. to_f is added
#to both pay rate and Hours to provide a more precise number.
#=end