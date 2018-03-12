#/usr/bin/ruby
puts "Employee Name"
Erik_Hanson = gets
puts "How much is their yearly salary?"
YTD_Gross = gets
puts "YTD Gross #{YTD_Gross.to_f / 26.to_f}"
#=begin
#since the employee is paid biweekly, you divide the yearly salary by 26.
#there are 52 weeks in a year, 52 divided by two is 26. You do this to
#acquire the gross amount they make each paycheck
#=end
puts "Tax Income"
Tax_Income = 0.15 * (YTD_Gross.to_f / 26.to_f)
puts Tax_Income
#=begin
#the tax percentage is 15% so you multiply it by the gross amount
#to see the amount for Tax Income
#end
puts "Social Security"
Social_Security = 0.065 * (YTD_Gross.to_f / 26.to_f)
puts Social_Security
#social security is the same step, but the percentage is 6.5%
puts "Medicare"
Medicare = 0.015 * (YTD_Gross.to_f / 26.to_f)
puts Medicare
#Medicare is the same step with a 1.5%
puts "YTD Deductions"
YTD_Ded = Tax_Income + Social_Security + Medicare
#=begin
#To get the deductions amount you add up all of the numbers from
#the deductions such as Tax Income, Social Security, and Medicare
#=end
puts YTD_Ded
puts "Net_Pay"
Net_Pay = ((YTD_Gross.to_f / 26.to_f) - YTD_Ded.to_f)
puts Net_Pay
#=begin
#the Net Pay is the result of the gross amount subtracted by the
#deductions amount
#=end