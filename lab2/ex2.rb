def array_min(arr)
	return arr.min
end

def array_max(arr)
	return arr.max
end

def array_sum(arr)
	sum = 0
	arr.each {|a| sum += a.to_i}
	return sum
end

def array_mult(arr)
	mult = 1
	arr.each {|a| mult *= a.to_i}
	return mult
end

puts "0 - exit"
a = 1
arr = Array.new(0) 
while a != "0"
	a = gets.chomp
	if a != "0"
		a.to_i
		arr.push(a)
	end
end

print arr, "\n"
print array_min(arr), " - минимум\n"
print array_max(arr), " - максимум\n"
print array_sum(arr), " - сумма\n"
print array_mult(arr), " - произведение\n"
