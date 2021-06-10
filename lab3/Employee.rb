require 'date'
class Employee
	attr_accessor :fio, :birthday, :phone, :address, :email, :passport, :specialization, :experience, :previouswork, :post, :previouswage
	def initialize(fio, birthday, phone, address, email, passport, specialization, experience, previouswork=nil, post=nil, previouswage=nil)
		self.fio=fio
		self.birthday=birthday
		self.phone=phone
		self.address=address
		self.email=email
		self.passport=passport
		self.specialization=specialization
		self.experience=experience
		self.previouswork=previouswork
		self.post=post
		self.previouswage=previouswage
	end

	def self.phone?(str)
		str.strip.match?(/^((\+7|8)(\D*\d){10})$/)
	end

	def self.email?(str)
		str.match?(/\w+@\w+.\w+/)
	end

	def self.fio?(str)
		str.match?(/([А-Яа-я]+[-\s]+){2,5}[А-Яа-я]*/)

	end

	def self.passport?(str)
		str.strip.match?(/^(\d{4}\s*\d{6})$/)
	end

	def self.birthday?(str)
		if str.strip.match?(/^(\d{1,2}.\d{2}.\d{4})$/)
			Date.strptime(str, '%d.%m.%Y') rescue return false
		end
		if str.strip.match?(/^(\d{1,2}.\d{2}.\d{2})$/)
			Date.strptime(str, '%d.%m.%y') rescue return false
		end
		true
	end




	def self.fio_normalize(str)



		if fio?(str)
			arr = str.strip.split.map{|el| if el!="-" then el.split("-").map{|el2| el2.capitalize}.join("-") else "-" end}
			mem = ""
			(0..(arr.length-2)).each do |ind|
				mem += arr[ind]
				if arr[ind+1] != "-" && arr[ind] != "-"
					mem += " "
				end
			end
			mem+=arr.last
			mem.strip
		else
			raise "Некорректный аргумент!"
		end
	end

	def self.email_normalize(str)
		if email?(str)
			str.downcase
		else
			raise "Некорректный аргумент!"
		end
	end

	def self.phone_normalize(str)
		if phone?(str)
			phone = str.strip.chars.filter{ |el| el.match?(/[0-9]/) }
			"#{phone[0]}-#{phone[1..3].join}-#{phone[4..10].join}"
		else
			raise "Некорректный аргумент!"
		end
	end

	def self.birthday_normalize(str)
		if birthday?(str)
			if str.strip.match?(/^(\d{1,2}.\d{2}.\d{4})$/)
				Date.strptime(str, '%d.%m.%Y').to_s.split("-").reverse.join(".")
			elsif str.strip.match?(/^(\d{1,2}.\d{2}.\d{2})$/)
				Date.strptime(str, '%d.%m.%y').to_s.split("-").reverse.join(".")
			end
		else
			raise "Некорректный аргумент!"
		end
	end

	def self.passport_normalize(str)
		if passport?(str)
			res = str.strip.split.join
			"#{res[0..3]} #{res[4..res.length-1]}"
		else
			raise "Некорректный аргумент!"
		end
	end

	def phone=(phone)
		@phone = Employee.phone_normalize(phone)
	end

	def email=(email)
		@email = Employee.email_normalize(email)
	end

	def fio=(fio)
		@fio = Employee.fio_normalize(fio)
	end


	def birthday=(date)
		@birthday = Employee.birthday_normalize(date)
	end

	def passport=(pass)
		@passport = Employee.passport_normalize(pass)
	end


	def to_s
		"#{fio}\n#{birthday}\n#{phone}\n#{address}\n#{email}\n#{passport}\n#{specialization}\n#{experience}\n#{previouswork}\n#{post}\n#{previouswage}\n"
	end
end