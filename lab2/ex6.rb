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

def zad11(arr)
	a = arr.min
	aa = 0
	bb = 0
	for elem in arr
		if elem == a 
			aa+=1
		else 
			bb+=1
		end
	end

	if aa > bb
		arr.delete(a)
	else
		arr.delete(b)
	end
end

array = Array.new(0) 
input = ARGV[0].to_i
case input
	when 1
		puts "1"
		array = read_from_file().split(' ')
	when 2
		puts "2"
		a = 1
		while a != "0"
			a = $stdin.gets.chomp
			if a != "0"
				a.to_i
				array = add_in_end(array,a)
			end
		end
end
#
inp = $stdin.gets.chomp.to_i

case inp
when 11
	zad11(array)
	print array
when 23

when 35
when 47
when 59
end
