puts "Enter Grade Point (out of 100): "
grade = gets.chomp.to_i
result = case grade
when 90..100 then "Letter Grade A"
when 80...90 then "Letter Grade B"
when 70...80 then "Letter Grade C"
when 40...70 then "Letter Grade D"
when 30..40  then "Letter Grade E"
when 1..30  then "Fail"
else  "Invalid Input"
end
p result
