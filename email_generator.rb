puts "Company Email Generator".center(50,"~")
puts "What's your first name? "
first_name = gets.chomp.downcase.split.join(".")
puts "What's your last name? "
last_name = gets.chomp.downcase.split.join(".")
print "Company: "
company = gets.chomp.downcase.split.join("")
email = first_name << "." <<last_name  << "@" << company << ".com"
p email
