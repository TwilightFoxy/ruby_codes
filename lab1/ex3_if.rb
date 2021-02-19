puts "Какой ваш любимый язык программирования? "
lan = gets.chomp
lan.downcase
if lan == "ruby" then
	puts "Подлиииизаааа... давай зачетку)"
elsif lan == "python"
	puts "Одобряю, но зачет надо получать, так что полюбишь)"
elsif lan == "c#"
	puts "Игорь, отойди."
elsif lan == "c++"
	puts "Рома, тебе заняться нечем?"
else
	puts "#{lan}? Что это? Вот Ruby для настоящих мужиков)"
end