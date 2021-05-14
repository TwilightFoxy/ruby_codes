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
<<<<<<< Updated upstream

	
end 
=======
end 

puts Employee.new(1,1,1,1,1,1,1,1,1,1)
>>>>>>> Stashed changes
