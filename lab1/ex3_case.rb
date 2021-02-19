puts "Какой ваш любимый язык программирования? "
lan = gets.chomp
lan.downcase
case lan
when "ruby"
	puts "Подлиииизаааа... давай зачетку)"
when "python"
	puts "Одобряю, но зачет надо получать, так что полюбишь)"
when "c#"
	puts "Игорь, отойди."
when "c++"
	puts "Рома, тебе заняться нечем?"
else
	puts "#{lan}? Что это? Вот Ruby для настоящих мужиков)"
end