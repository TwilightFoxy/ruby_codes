require './Employee.rb'

class TestEmployee
	def initialize
		@list = []
		@list << Employee.new("Михаелян Левон Тигранович", "05.07.2000", "+79284071970", "ул. Домбайская, дом 76", "5dimond5@mail.ru", "9999 999999", "должность1", 5, "компания1", "старая должность1", 20000)
		@list << Employee.new("Короновирус", "17.10.2019", "88005553535", "Где-то в Китае...", "mvideo@mail.ru", "1234 123456", "должность2", 12, "Мвидео", "Директор", 99999.99)
	end

	def to_s
		@list.reduce([]){|a, b| a << b.to_s}.join("\n")
	end
end


test = TestEmployee.new
puts test