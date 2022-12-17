def caesar_cipher(string,shift_value)
result=''
  string.split('').each do |i|
      val = i.ord
      if (val>=65 and val<=90 || val>=97 and val<=122)
        if(val.between?(86,91))
            val1=(90-val)
            val=(65+(shift_value-val1-1))
        elsif(val.between?(117,123))
            val1=(122-val)
            val=(97+(shift_value-val1-1))
        else
          val=val+shift_value
        end
    end
    result=result+(val.chr)
  end
  puts result
end
print "Enter a string:- "
str = gets.chomp
print "Enter the shift count (0 to 26):-  "
len= 5
caesar_cipher(str, len)
