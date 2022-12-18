add = lambda do |a,b|
    a+b
end
subtract = lambda do |a,b|
    a-b
end
multiply = lambda do |a,b|
     a*b
end
divide = lambda do |a,b|
    a/b
end

def manager(function)
    print "Number 1 : "
    number1= gets.chomp.to_i
    print "Number 2 : "
    number2= gets.chomp.to_i
    result = function.call(number1,number2)
    puts "Result = #{result}".center(40,"-")
end

begin
puts "Calculator"
puts "a) Add"
puts "b) Subtract"
puts "c) Multiply"
puts "d) Divide"
puts "q) Quit"
print "Select (a/b/c/d/q): "
choice = gets.chomp
case choice
when 'a' then manager(add)
when 'b' then manager(subtract)
when 'c' then manager(multiply)
when 'd' then manager(divide)
end
end