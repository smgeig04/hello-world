#!/usr/bin/ruby
def getJudgeData()
	judge= [] #sets up an array so we can have all of the data show up at once
	for jud in(0..4) do #establishes a loop to retrieve the judges scores
	puts "Hello, please place Judge #{jud} score. Can be anywhere from (0-10) : "
	score=gets.chomp.to_f
	until validateScore(score) do
	puts "That is invalid, the scores may range from (0-10)"
	score=gets.chomp.to_f
	end
	judge[jud]=score #this allows the data entered in 'gets' to equal the judge array
	
	end
	return judge
end

def validateScore(data) #this method makes sure that the data entered is between the scores of 0-10
	if data >= 0 and data <= 10
		return true
	else
		return false
	end
end



def calcScore(judge) #this method makes sure that the data entered gets average'd out
	
	avg = 0.0
	


	for jud in(0..4) do

		puts judge[jud].to_s

		avg = avg+judge[jud]
	end
		
		#let average equal the data entered, and then take out the lowest and highest entries
		average = avg - judge.min - judge.max


		#let average be divided by 3, thus averaging out the scores without the minimum and maximum entries.		
		return average / 3.0
	
end
	
performer=getJudgeData
input=calcScore(performer)

#this shows the performer's overall average according to the judge scores
puts "The performer's average according to the judges is #{input}"