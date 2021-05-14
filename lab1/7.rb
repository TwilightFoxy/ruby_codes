def is_prime(num)
  return false if num <= 1
  Math.sqrt(num).to_i.downto(2).each {|i| return false if num % i == 0}
  true
end

def koll_of_num(num)
	a = num.to_i
	kol = 0
	while a > 0
		if a%10 < 3		
			kol += 1
		end
		a/=10
	end
	return kol
end

def metod1(num)
	a = num.to_i
	sum = 0
	for i in 3..(a/2)+1
		if !is_prime(i)
			sum += i
		end
	end
	return sum
end


def metod3(num)
	a = num.to_i
	sum = 0
	
	return sum
end



input_command = gets.chomp
case input_command
	when "summ"
		a = gets.chomp
		print "Сумма цифр числа: ", summ_of_num(a),"\n"
	when "mult"
		a = gets.chomp
		print "Произведение цифр числа: ", multiplication_of_num(a),"\n"
	when "min"
		a = gets.chomp
		print "Минимальная цифра числа: ", min_of_num(a),"\n"
	when "max"
		a = gets.chomp
		print "Максимальная цифра числа: ", max_of_num(a),"\n"
	when "m1"
		a = gets.chomp
		print "Сумма непростых делителей числа: ", metod1(a),"\n"
	when "m2"
		a = gets.chomp
		print "Количество цифр числа, меньших 3: ", koll_of_num(a),"\n"
	when "m3"
		a = gets.chomp
		print "", metod3(a),"\n"
	when "-h"
		puts "Команды: summ, mult, min, max, m1, m2, m3"
	else
		puts "Hello World!"
end