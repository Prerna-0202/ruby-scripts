puts "Enter the length of fibonacci series"
number = gets.chomp.to_i
prev=0
current=1
print "1 "
while number>0
 new = current + prev
 print new 
 print " "
 prev = current
 current = new
 number-=1
end