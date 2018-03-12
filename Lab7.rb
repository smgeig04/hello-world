#!/usr/bin/ruby
require "csv" #loads csv files if there are any

rows=[] #establishes an empty array to allow data to be thrown in
i=0

CSV.foreach('userdata.csv') do |reader| 
#loads the userdata.csv file

	rows<<reader #inputs the data in reader (under the file userdata.csv) into rows to become an array

	password=rows[i][2]
	
	size=password.length 

=begin
turns the array into a variable so we can look at the character length
of the third row (passwords)
=end
	

	 if size<8 then 
	 	puts "#{rows[i][0]},#{rows[i][1]}"
	 end


=begin
shows the first two rows (first and last names) of users who have
password character lengths of less than 8
=end
	
							
i=i+1

end