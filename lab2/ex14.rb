def read_from_file()
	config = IO.read('input14.txt')
	config.class    #=> String
	return config
end
puts read_from_file()
read_from_file().chomp.split(/\d/).reject(&:empty?).sort_by{|a| a.split(" ").length}.display
puts