input = ARGV
a = input[0].to_i
sum = 0
while a > 0
	sum += a%10
	a/=10
	#puts a
end
puts "Сумма чисел #{sum}"