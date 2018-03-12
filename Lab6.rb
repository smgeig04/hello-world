#!/usr/bin/ruby
customers=0
until customers>0 do #establishes that there must be at least 1 customer
	puts "How many customers are there?"
	customers = gets.chomp.to_i
end
def getInput(cus) 
	cusData=[] #sets up an array so we can have all of the data show up at once


		puts "Hello Customer #{cus}, Please enter your name : "
		
		name=gets.chomp.to_s
	
		bl=-1
		until bl>=0 do #establishes that the opening balance is not negative
			p "#{name} Please enter  opening balance (minimum of zero) :"
			bl=gets.chomp.to_f
		end
							
		cusData[0]=name
		cusData[1]=bl
	return cusData
end
										
				
def determineCusType(cusData) #method that will establish what kind type of customer they are based on their closing balance
	if  cusData[2] > 100000 then
		cusData[3]= "Diamond"
	end
	if cusData[2] > 90000 and cusData[2] < 100000 then
		cusData[3]= "Gold"
	end
	if cusData[2] > 80000 and cusData[2] < 90000 then
				cusData[3] = "Silver"
	end
	if cusData[2] <80000 then
		 cusData[3]="Bronze"
	end
				
	return cusData
	
end
				
			


def calBalance(cusData) #method that establishes the closing balance formula after the opening balance is given
	
	cusData[2] = (0.075 * cusData[1]) + cusData[1]
	
	return cusData
end
								
					
				
def disPlayInfo(cusData) #method that shows us the customer and all of their information
	puts "Customer Name : #{cusData[0]}"
	puts "Opening Balance : #{cusData[1]}"
	puts "Closing Balance : #{cusData[2]}"
	puts "Customer Status : #{cusData[3]}"
end

for cust in (1..customers) do #establishes a loop so we can go through each customer and ask for their information
cusData=getInput(cust)
cusData=calBalance(cusData)
cusData=determineCusType(cusData)
disPlayInfo(cusData)
end