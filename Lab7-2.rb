#!/usr/bin/ruby
require 'date' #initializes the constant variable DateTime

myFiles=Dir.entries(".") #let myFiles equal all of the entries in the current directory
puts myFiles[10] 

myFiles.each do|x| 
next if x == "." or x == ".." #have the array skip these files showing in the output

mt = File.mtime(x) #shows the last time the file was modified

xx=DateTime.now.to_date #shows the current date

yy=mt.to_date

cc=File.atime(x).to_date #shows the last time the file was accessed


dd=(xx-yy).to_i 
=begin
shows the files and their current date subtracted by the last date 
they were modified,
thus showing the amount of days since they've been modified
=end


ss=File.size(x) #shows the amount of databytes the file has


puts " #{x} \t #{xx} \t #{yy} \t #{cc} \t #{ss}bytes \t #{dd} " if dd<=14
	
	#shows all of the file's data, and the files that were last modified in the past two weeks

end



