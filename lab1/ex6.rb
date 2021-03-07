#input = ARGV
#a = input[0].to_i

def summ_of_num(num)
	a = num.to_i
	sum = 0
	while a > 0
		sum += a%10
		a/=10
		#puts a
	end
	return sum
end

def max_of_num(num)
	a = num.to_i
	max = a % 10
	a /= 10
	while a != 0
		b = a % 10
		if max < b then
			max = b
		end
		a /= 10
	end
	return max
end

def min_of_num(num)
	a = num.to_i
	min = a % 10
	a /= 10
	while a != 0
		b = a % 10
		if min > b then
			min = b
		end
		a /= 10
	end
	return min
end

def multiplication_of_num(num)
	a = num.to_i
	mult = 1
	while a > 0
		mult *= a%10
		a/=10
	end
	return mult
end

puts "Введите число: "
num = gets.chomp
print "Сумма цифр числа: ", summ_of_num(num),"\n"
print "Максимальная цифра числа: ", max_of_num(num),"\n"
print "Минимальная цифра числа: ", min_of_num(num),"\n"
print "Произведение цифр числа: ", multiplication_of_num(num),"\n"
#puts "Сумма чисел #{sum}"