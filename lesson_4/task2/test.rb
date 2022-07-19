buffer = []
file = File.open('base.txt')
file_data = file.read.split("\n")

while true
    print "Введи возраст студента: "
    age = gets.to_i
    break if age == -1 || age < 0
    i = 0
    file_data.each do |x|
        if x.include? age.to_s
            buffer << x
            file_data.delete_at(i)
        end
        i += 1
    end
end

puts buffer
result = File.open('result.txt', "w")

buffer.each do |x|
    result.write x + "\n"
end

result.close
file.close