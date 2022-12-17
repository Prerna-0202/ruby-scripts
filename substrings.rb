#  It returns a  a hash listing each substring (case insensitive) that was found in the original string and how many times it was found.
def substring(text,array)
  result = Hash.new(0)
  text=text.downcase!
  array.each do |i|
  value = text.scan(i).length
  result[i]=value unless value==0
  end
  result
end
dictionary = ["Lorem" ,"ipsum", "dolor" ,"sit" ,"amet", "consectetur" ,"consec","elit","adipiscing" ,"elit", "Sed" ,"diam" ,"urna","susci", "suscipit" ,"vitae" ,"blandit" "vitae", "vehicula" "at" "nisl"]
string = "Consectetur consec  elit diam urna suscipit elit susci"
answer = substring(string,dictionary)
answer.each do |i|
    print i
    print " , "
end


