def stock_picker(prices)
    profit=0
    final = []
    prices.each_with_index do |price1,i|
        prices.each_with_index do |price2,j|
            temp_profit = price2-price1
            if temp_profit>profit and i<j
                profit=temp_profit
                final=[i,j]
            end
        end
    end
    print "The profit is "+ profit.to_s +  " through index "
    p final
end
puts "Enter the length of the array"
len= gets.chomp.to_i
array = []
puts "Enter the values of array"
len.times do |i|
   val=gets.chomp.to_i
   array.push(val)
end
stock_picker(array)