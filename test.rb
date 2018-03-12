#!/usr/bin/ruby

customers=0
until customers>0 do #establishes that there must be at least 1 customer
	puts "How many customers are there?"
	customers = gets.chomp.to_i

end


def GetAddress(cust) #establishes the customer's address
	data=[] #establishes an empty array so that all of data can be output at once


puts "Hello customer #{cust}"
puts "What is your address?"
add = gets.chomp.to_s

data[0]=add
return data
end


#establishes Last Year's Assessed Value, and forces the user to input a minimum property value of $95,000
def GetValue(data) 
	puts "What is the homeowner's previous Assessed Value?"
	last = gets.chomp.to_i
	if last < 95000
		until
			last >= 95000
		puts "Sorry minimum property value is $95,000"
		last = gets.chomp.to_i
		end
	end
	data[1]=last
	return data
end


#establishes that Last Year's Assessed Value is increased by 2.7% to become the Current Assessed Value
def CalculateNewAssessedValue(data)
	cur = (data[1] * 0.027) + data[1]
	data[2] = cur
	return data
end


#establishes the taxes that are due based on the Current Assessed Value
def CalculateTaxesDue(data)
	due = ((data[2]-25000) / 1000) * 0.1003
	data[3] = due
	return data
	end


#shows the information from the input that is based on the data array
def DisplayResults(data)
	
	puts "Street Address: #{data[0]}"
	puts "Last Year Assessed Value: $#{data[1]}"
	puts "Current Assessed Value: $#{data[2]}"
	puts "Exemption: $25,000"
	puts "Taxable Value: $#{data[2]-25000}"
	puts "Tax Rate (per $1,000): $10.03"
	puts "Due: $#{data[3]}"
end


for cust in (1..customers) do

data=GetAddress(cust)
data=GetValue(data)
data=CalculateNewAssessedValue(data)
data=CalculateTaxesDue(data)
DisplayResults(data)
end

