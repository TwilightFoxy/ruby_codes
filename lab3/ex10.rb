require './Employee.rb'


class TerminalViewListEmployee

  def initialize
    @list = []
    @c = ""
  end


  def add(person)
    if person.class == Employee
      @list << person
    else
      raise "Неверный аргумент!"
    end
  end


  def print_list
    @list.each { |el| puts "#{el}\n" }
  end


  def gui_start
    print "Выберите опцию. Для просмотра справки введите help: "
    choose = STDIN.gets.chomp
    case choose
    when "add"
      print "ФИО: "
      fio=gets.chomp
      while !Employee.fio?(fio)
        puts "Неверный формат! Введите заново"
        print "ФИО: "
        fio=gets.chomp
      end

      print "Дата рождения: "
      birthday=gets.chomp
      while !Employee.birthday?(birthday)
        puts "Неверный формат! Введите заново"
        print "Дата рождения: "
        birthday=gets.chomp
      end

      print "Номер телефона: "
      phone=gets.chomp
      while !Employee.phone?(phone)
        puts "Неверный формат! Введите заново"
        print "Номер телефона: "
        phone=gets.chomp
      end

      print "Адрес проживания: "
      address=gets.chomp
      # while !Employee.address?(address)
      # 	puts "Неверный формат! Введите заново"
      # 	print "Адрес проживания: "
      # 	address=gets.chomp
      # end

      print "email: "
      email=gets.chomp
      while !Employee.email?(email)
        puts "Неверный формат! Введите заново"
        print "email: "
        email=gets.chomp
      end

      print "Паспортные данные: "
      passport=gets.chomp
      while !Employee.passport?(passport)
        puts "Неверный формат! Введите заново"
        print "Паспортные данные: "
        passport=gets.chomp
      end

      print "Специальность: "
      specialization=gets.chomp
      # while !Employee.specialization?(specialization)
      # 	puts "Неверный формат! Введите заново"
      # 	print "Специальность: "
      # 	specialization=gets.chomp
      # end

      print "Стаж: "
      experience=gets.chomp
      # while !Employee.experience?(experience)
      # 	puts "Неверный формат! Введите заново"
      # 	print "Стаж: "
      # 	experience=gets.chomp
      # end

      if experience.to_i > 0

        print "Предыдущее место работы: "
        previouswork=gets.chomp
        # while !Employee.previouswork?(previouswork)
        # 	puts "Неверный формат! Введите заново"
        # 	print "Предыдущее место работы:: "
        # 	previouswork=gets.chomp
        # end

        print "Должность на предыдущей работе: "
        post=gets.chomp
        # while !Employee.post?(post)
        # 	puts "Неверный формат! Введите заново"
        # 	print "Должность на предыдущей работе: "
        # 	post=gets.chomp
        # end

        print "Зарплата на предыдущей работе: "
        previouswage=gets.chomp
        # while !Employee.previouswage?(previouswage)
        # 	puts "Неверный формат! Введите заново"
        # 	print "Зарплата на предыдущей работе: "
        # 	previouswage=gets.chomp
        # end
      else
        previouswork=nil
        post=nil
        previouswage=nil
      end


      @list << Employee.new(fio, birthday, phone, address, email, passport, specialization, experience, previouswork, post, previouswage)
      puts



    when "exit"
      exit

    when "help"
      puts "help - справка"
      puts "exit - выход из программы"
      puts "add - добавить работника"
      puts "print - вывод всех записей"
      puts
    else
      puts "Неизвестная команда, введите help для справки."

    end

  end

end


terminal = TerminalViewListEmployee.new
loop do
  terminal.gui_start
end
