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

def metod1(num)
	a = num.to_i
	kol = 0
	for i in 3..(a/2)+1
		if i % 3 != 0
			if a % i == 0
				kol += 1
			end
		end
	end
	return kol
end

def metod2(num)
	a = num.to_i
	min = 10
	while a != 0
		b = a % 10
		if b % 2 == 1
			if min > b then
				min = b
			end
		end
		a /= 10
	end
	unless min == 10
		return min
	else 
		return 0
	end
end

puts "Введите число: "
num = gets.chomp
puts "Найти количество делителей числа, не делящихся на 3."
print metod1(num), "\n"
puts "Найти минимальную нечетную цифру числа."
print metod2(num), "\n"
