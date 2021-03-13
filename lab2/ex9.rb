def zad5(str) #Дана строка. Необходимо перемешать все символы строки в случайном порядке.
	return str.shuffle.join("")
end

def zad7(str) #Дана строка, состоящая из символов латиницы. Необходимо проверить, образуют ли прописные символы этой строки палиндром.
	return str == str.reverse
end

def zad14(str) #Дана строка в которой записаны слова через пробел. Необходимо упорядочить слова по количеству букв в каждом слове.

end

puts "5|7|14"
inp = $stdin.gets.chomp.to_i

puts "Введите строку\n"
	str = $stdin.gets.chomp.split('')

case inp
when 5
	puts a = zad5(str)
when 7
	puts zad7(str)
when 14

end
