def greeting(a, b, c)
	if c <= 0
		puts "Наверное, ты врешь про свой возраст..."
		return 1
	end

	if c < 18
		puts " - Привет, #{a} #{b}. Тебе меньше 18 лет, но начать учиться программировать никогда не рано"
		return 0
	else
		puts " - Привет, #{a} #{b}. Самое время заняться делом!"
		return 1
	end
end

print "Введи своё имя: "
input_name = gets.chomp
print "Введи свою фамилию: "
input_lastName = gets.chomp
print "Введи свой возраст: "
input_age = gets.to_i

greeting(input_name, input_lastName, input_age)