def arr_min(arr)
	return arr.min
end

def arr_max(arr)
	return arr.max
end

def arr_sum(arr)
	sum = 0
	arr.each {|a| sum += a.to_i}
	return sum
end

def arr_mult(arr)
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
		arr.push(a.to_i)
	end
end

print arr, "\n"
print arr_sum(arr), " - сумма\n"
print arr_mult(arr), " - произведение\n"
print arr_min(arr), " - минимум\n"
print arr_max(arr), " - максимум\n"
