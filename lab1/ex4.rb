puts "Введите команду: (0 - выход)"

comm = gets.chomp
str = comm.split

if str.size == 1
	exec(str[0])
elsif str.size == 2
	exec(str[0], str[1])
else
	puts "Я хз чо ты ввёл, не воспринимаю больше 1 аргумента."
end
while comm != "0"
	comm = gets.chomp
	str = comm.split
	if str.size == 1
		exec(str[0])
	elsif str.size == 2
		exec(str[0], str[1])
	else
		puts "Я хз чо ты ввёл, не воспринимаю больше 1 аргумента."
	end
end