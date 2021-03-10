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

def read_from_file()
	config = IO.read('input.txt')
	config.class    #=> String
	return config
end

array = read_from_file().split(' ')
print array