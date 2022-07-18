# Скорее всего всё это можно было реализовать менее объёмно,
# но я торопился, поэтому получилось так. Для удобства, я создал
# несколько файлов txt для конкретных методов.

def index
    file = File.open('test.txt')
    file_data = file.read
    file.close
    file_data
end

def find(id)
    file = File.open('test.txt')
    file_data = file.read.split("\n")
    file.close
    file_data[id-1]
end

def where(pattern)
    file = File.open('test.txt')
    file_data = file.read.split("\n")
    buffer = []
    file_data.each do |x|
        if x.include? pattern
            buffer << x
        end
    end
    buffer
end

def update(id, text)
    file = File.open('test.txt')
    file_data = file.read.split("\n")
    file_data[id-1] = text + "\n"
    file.close
    file = File.open('test_update.txt', "w")
    file_data.each do |x|
        unless x.include? "\n"
            file.write x + "\n"
        else
            file.write x
        end
    end
    puts "Изменения записанны (update)"
    file.close
end

def delete(id)
    file = File.open('test.txt')
    file_data = file.read.split("\n")
    file_data.delete_at(id-1)
    file.close
    file = File.open('test_delete.txt', 'w')
    file_data.each { |x| file.write x + "\n" }
    puts "Изменения записанны (delete)"
    file.close
end

def create(text)
    file = File.open('test.txt')
    file_data = file.read.split("\n")
    file.close
    file = File.open('test_create.txt', 'a')
    file_data.each { |x| file.write x + "\n" }
    file.write text + "\n"
    puts "Изменения записанны (create)"
    file.close
end

puts index
puts "#"*50
puts find(1)
puts "#"*50
puts where('мой')
puts "#"*50
puts update(1, 'ggggg')
puts "#"*50
puts delete(1)
puts "#"*50
puts create('ывассцсывомыв')