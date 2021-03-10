def array_min(arr)
	min = arr[0]
	for i in arr
		if i<min 
			min = i
		end
	end
	return min
end

def array_max(arr)
	max = arr[0]
	for i in arr
		if i>max 
			max = i
		end
	end
	return max
end

def array_sum(arr)
	sum = 0
	for i in arr
		sum += i.to_i
	end
	return sum
end

def array_mult(arr)
	sum = 1
	for i in arr
		sum *= i.to_i
	end
	return sum
end

puts "0 - exit"
a = 1
arr = Array.new(0) 
while a != "0"
	a = gets.chomp
	if a != "0"
		a.to_i
		arr_sub = Array[a]
		arr = arr + arr_sub
	end
end

print arr, "\n"
print array_min(arr), " - минимум\n"
print array_max(arr), " - максимум\n"
print array_sum(arr), " - сумма\n"
print array_mult(arr), " - произведение\n"
