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
	def to_s
		"#{@fio}\n#{@birthday}\n#{@phone}\n#{@address}\n#{@email}\n#{@passport}\n#{@specialization}\n#{@experience}\n#{@lastwork}\n#{@doljnost}\n#{@lastmoney}\n"
	end
end