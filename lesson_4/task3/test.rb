BALANCE = 100
DEPOSIT = true

if File.exists?('balance.txt')
    puts "Ваш банковский счёт присутствует в нашем банке." + "\n\n"
    sleep(0.5)
else
    balance = File.open('balance.txt', "w").write BALANCE.to_s
end

while true
    puts "D (deposit) or W (withdraw) or T (top up) or B (balance) or Q (quit)"
    print "Введи букву в верхнем регистре: "
    user_choice = gets.chomp
    
    case user_choice
    when "D" # deposit
        if DEPOSIT == false
            puts "Ваша сессия уже состоялась." + "\n\n"
            sleep(1)
            next
        end

        if File.open('balance.txt').read.to_i > 0
            puts "Депозит можно назначить только один раз за одну сессию."
            deposit = ((File.open('balance.txt').read.to_i * 2) / 100).to_i
            puts "Ваш депозит это - 2% от баланса вашей карты, тоесть #{deposit} рублей."
            balance = File.open('balance.txt')
            balance_data = balance.read.split("\n")
            balance.close
            File.delete('balance.txt')
            balance_data = balance_data[0].to_i
            balance = File.open('balance.txt', "w")
            balance.write (balance_data + deposit).to_s
            balance.close
            puts "Депозит назначен." + "\n\n"
            sleep(1)
        end
        DEPOSIT = false
    when "W" # withdraw
        print "Снимаемая сумма: "
        withdraw = gets.to_i

        if withdraw <= 0 || withdraw > File.open('balance.txt').read.to_i
            puts "Ошибка! Недостаток средств на карте, либо невозможность их вывода." + "\n\n"
            sleep(1)
        else
            balance = File.open('balance.txt')
            balance_data = balance.read.split("\n")
            balance.close
            File.delete('balance.txt')
            balance_data = balance_data[0].to_i
            balance = File.open('balance.txt', "w")
            balance.write (balance_data - withdraw).to_s
            balance.close
            puts "Сумма снята." + "\n\n"
            sleep(1)
        end 
    when "T" # top up
        print "Сумма для пополнения(не больше 1500): "
        withdraw = gets.to_i

        if withdraw <= 0 || withdraw > 1500
            puts "Ошибка! Слишком большая, либо невозможная сумма для пополнения баланса." + "\n\n"
            sleep(1)
        else
            balance = File.open('balance.txt')
            balance_data = balance.read.split("\n")
            balance.close
            File.delete('balance.txt')
            balance_data = balance_data[0].to_i
            balance = File.open('balance.txt', "w")
            balance.write (balance_data + withdraw).to_s
            balance.close
            puts "Баланс увеличен." + "\n\n"
            sleep(1)
        end

    when "B" # balance
        print 'Ваш счёт:'
        puts File.open('balance.txt').read + "\n\n"
        sleep(1)
    when "Q" # quit
        puts ''
        puts '#'*50
        break
    else # Error
        puts 'Извините, но я не могу распознать ваш запрос. Давайте еще раз.' + "\n\n"
        sleep(1)
    end
end