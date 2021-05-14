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

def gcd(a, b)
    if (b == 0)
        return a
   	else
       	return gcd(b, a % b)
    end
end


def metod3(num)
	a = num.to_i
	sum = 0
	suma_cifr = summ_of_num(a)
	proizv_cifr = multiplication_of_num(a)
	for i in 2..(a/2)+1
		if a % i == 0
			#print a, ":", i,":", gcd(i, suma_cifr), ":", gcd(i, proizv_cifr), "\n"
			if gcd(i, suma_cifr) == 1 and gcd(i, proizv_cifr) > 1
				sum += i
			end
		end
	end
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
		print "Количество делителей числа, не делящихся на 3: ", metod1(a),"\n"
	when "m2"
		a = gets.chomp
		print "Минимальная нечетная цифра числа: ", metod2(a),"\n"
	when "m3"
		a = gets.chomp
		print "Сумму всех делителей числа, взаимно простых с суммой
цифр числа и не взаимно простых с произведением цифр числа: ", metod3(a),"\n"
	when "-h"
		puts "Команды: summ, mult, min, max, m1, m2, m3"
	else
		puts "Hello World!"
	end