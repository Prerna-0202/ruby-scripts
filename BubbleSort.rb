def bubble_sort(array)
    unsorted = true
    while unsorted do
        i = 0
        unsorted = false
        while i < (array.length - 1)
            if array[i] > array[i + 1]
                t=array[i]
                array[i]=array[i+1]
                array[i+1]=t
                unsorted = true
            end
            i += 1
        end
    end
    print array   
end
def bubble_sort (array)
    unsorted=true
    while unsorted do
        i=0
        unsorted=false
        while i <array.length-1
            if array[i] > array[i+1]
                t=array[i]
                array[i]=array[i+1]
                array[i+1]=t
                unsorted = true
            end
            i +=1
        end
    end
    p array
end

puts "Enter the length of the array"
len= gets.chomp.to_i
array = []
puts "Enter the values of array"
len.times do |i|
   val=gets.chomp.to_i
   array.push(val)
end
 bubble_sort(array)