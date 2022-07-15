def reception_string(string)
    if string[-2..-1] == 'CS'
        2**string.size
    else
        string.reverse
    end
end

my_var = gets.chomp
puts reception_string(my_var)