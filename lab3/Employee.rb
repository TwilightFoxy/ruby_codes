class Employee
	attr_accessor :fio, :birthday, :phone, :address, :email, :passport, :specialization, :experience, :lastwork, :doljnost, :lastmoney
	def initialize(fio, birthday, phone, address, email, passport, specialization, experience, lastwork=nil, doljnost=nil, lastmoney=nil)
		self.fio=fio
		self.birthday=birthday
		self.phone=phone
		self.address=address
		self.email=email
		self.passport=passport
		self.specialization=specialization
		self.experience=experience
		self.lastwork=lastwork
		self.doljnost=doljnost
		self.lastmoney=lastmoney
	end

	def rus_ph?(str)
		str.match?(/^(\+7|7|8)/) ? true : false
	end

	def phone_norm(str)
		phone = str.chars.filter{|el| el.match?(/[0-9]/)}
		if phone.length != 11 
			raise "Некорректный аргумент!"
		else
			"#{phone[0]}-#{phone[1..3].join}-#{phone[4..10].join}"
		end
	end

	def phone=(phone)
		@phone = phone_norm(phone)
	end

	def email?(str)
		str.match?(/\w+@\w+.\w+/)
	end

	def email_normalize(str)
		if email?(str)
			str.downcase
		else
			raise "Некорректный аргумент!"
		end
	end

	def email=(email)
		@email = email_normalize(email)
	end


	def to_s
		"#{@fio}\n#{@birthday}\n#{@phone}\n#{@address}\n#{@email}\n#{@passport}\n#{@specialization}\n#{@experience}\n#{@lastwork}\n#{@doljnost}\n#{@lastmoney}\n"
	end

	#def fio?(str)
	#	str.match?(/^(\s*([а-я|А-Я|ё|Ё]+)\s*(\-?)\s*([а-я|А-Я|ё|Ё]+)\s+([а-я|А-Я|ё|Ё]+)\s*(\-?)\s*([а-я|А-Я|ё|Ё]+)\s+([а-я|А-Я|ё|Ё]+)\s*(\-?)\s*([а-я|А-Я|ё|Ё]+)\s*)$/)

	#end


	#def fio_normalize(str)
	#	if fio?(str)
	#		arr = str.strip.split.map{|el| if el!="-" then el.split("-").map{|el2| el2.capitalize}.join("-") else "-" end}
	#		mem = ""
	#		(0..(arr.length-2)).each do |ind| 
	#			mem += arr[ind]
	#			if arr[ind+1] != "-" && arr[ind] != "-"
	#				mem += " "
	#			end
	#		end
	#		mem+=arr.last
	#		mem.strip
	#	else
	#		raise "Некорректный аргумент!"
	#	end		
	#end

	#def fio=(fio)
	#	@fio = fio_normalize(fio)
	#end
end