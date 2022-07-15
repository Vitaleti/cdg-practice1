def pokemon(name, color)
    {name: name, color: color}
end

print 'Введи кол-во покемонов: '
cnt = gets.to_i
stec = []

for i in (1..cnt)
    print 'Введи имя покемона: '
    name = gets.chomp
    print 'Введи цвет покемона: '
    color = gets.chomp
    stec << pokemon(name, color)
end

puts stec