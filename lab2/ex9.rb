def zad5(str) #Дана строка. Необходимо перемешать все символы строки в случайном порядке.
	return str.shuffle.join("")
end

def zad7(str) #Дана строка, состоящая из символов латиницы. Необходимо проверить, образуют ли прописные символы этой строки палиндром.
	return str == str.reverse
end

def zad14(str) #Дана строка в которой записаны слова через пробел. Необходимо упорядочить слова по количеству букв в каждом слове.
	return str.sort_by{|i| i.size}.join(",")
end


puts "5|7|14"
inp = $stdin.gets.chomp.to_i

puts "Введите строку\n"
str = $stdin.gets.chomp

case inp
when 5
	puts ad5(str.split(''))
when 7
	puts zad7(str.split(''))
when 14
	puts zad14(str.split(' '))
end
