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

def add_in_end(arr, elem)
	return arr.push(elem)
end

def add_in_start(arr, elem)
	return arr.unshift(elem)
end

def add_in_any_position(arr, position, elem)
	return arr.insert(position, elem)
end

def add_mass(arr, arr2)
	return arr += arr2
end

def add_in_position(position, elem, arr)
	return arr[position] = elem
end

puts "0 - exit"
a = 1
arr = Array.new(0) 
while a != "0"
	a = gets.chomp
	if a != "0"
		a.to_i
		arr = add_in_end(arr,a)
	end
end
ы

print arr, "\n"
print array_min(arr), " - минимум\n"
print array_max(arr), " - максимум\n"
print array_sum(arr), " - сумма\n"
print array_mult(arr), " - произведение\n"
