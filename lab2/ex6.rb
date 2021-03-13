def array_min(arr)
	return arr.min
end

def array_max(arr)
	return arr.max
end

def array_sum(arr)
	return arr.sum
end

def array_mult(arr)
	return arr.reduce(1,:*)
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

def zad23(arr)
	a = arr.min
	arr.delete(a)
	b = arr.min
	print a, " ", b,"\n"
end

def zad35(arr, chislo)
	ch = 0
	razn = (chislo.to_i - arr[0].to_i).abs
	for elem in arr
		ab = (chislo.to_i - elem.to_i).abs
		if ab < razn
			razn = ab
			ch = elem
		end
	end
	return ch
end

def zad47(arr)
	deliteli = Array.new(0) 
	for elem in arr
		max = (elem.to_i / 2)+1
		for i in 1..max
			if elem.to_i % i == 0
				deliteli.push(i)
			end
		end
	end
	deliteli = deliteli.uniq
	print deliteli
end

<<<<<<< HEAD
def zad59(arr)
	array = Array.new(0) 
	arr.each { |a| 
		z = 0
		arr.each { |i|
			if i.to_i == a.to_i
				z += 1
			end
			}
		if z > 1 and a.to_i > 0 and a.to_i < 100
			array.push(a.to_i*a.to_i)
		end
	}
	return array.uniq
end

=======
>>>>>>> main
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
				array = add_in_end(array, a)
			end
		end
end
#
puts "11|23|35|47|59"
inp = $stdin.gets.chomp.to_i
case inp
when 11
	zad11(array)
	print array
when 23
	zad23(array)
when 35
	print array, "\n"
	ch = $stdin.gets.chomp.to_i
	ch = zad35(array, ch)
	print ch, "\n"
when 47
	zad47(array)
when 59
	p = zad59(array)
	print p, "\n"
end
