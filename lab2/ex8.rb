puts "Введите список: "
print "Вывод: ", gets.chomp.split().map { |str| str.to_i }.max