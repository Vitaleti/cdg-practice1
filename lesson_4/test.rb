def max(array)
    value = nil
    array.each do |elem|
        value = elem if value.nil? || value < elem
    end
    value
end

def even(array)
    value = []
    array.each do |elem|
        value << elem if elem.even?
    end
    value
end

def multiply(array)
    [1, 2, 3, 4, 5].reject(&:zero?).inject(:*)
end

a = [12, 23, 2, 432, 4, 1, -12]
puts max(a)

a = [1, 2, 3, 4, 5, 6, 7, 123, 100, -23, 0]
p even(a)

a = [0, 1, 2, 3, 4, 5]
puts multiply(a)

# def log(action, message)
#     puts "#{action}: #{message}"
# end

# def greeting(name, age)
#     if age > 18
#         { action: "OK", message: "Hello #{name}, you are old enough to drive." }
#     elsif age < 18 or age < 1
#         { action: "error", message: "Hello #{name}, you are not drive a car." }
#     end
# end

# result = greeting("Kimura", 21)
# log(result[:action], result[:message])

# result = greeting("Momoshiki", 16)
# log(result[:action], result[:message])