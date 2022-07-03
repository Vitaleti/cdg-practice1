def foobar(a, b)
	if a == 20 or b == 20
		puts b
		return b
	else
		puts a + b
		return a + b
	end
end

print "Введи первое число: "
num1 = gets.to_i
print "Введи второе число: "
num2 = gets.to_i

foobar(num1, num2)