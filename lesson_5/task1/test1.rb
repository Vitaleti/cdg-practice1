require './balance'
require './withdrow'
require './top_up'
require './deposit'

class CashMachine
    def self.init
        while true
            puts "D (deposit) or W (withdraw) or T (top up) or B (balance) or Q (quit)"
            print "Введи букву в верхнем регистре: "
            user_choice = gets.chomp

            case user_choice
            when "D"
                if $DEPOSIT == false
                    puts "Ваша сессия ужу состоялась" + "\n\n"
                    sleep(1)
                    next
                else
                    if File.open('balance.txt').read.to_i > 0
                        deposit = Deposit.new
                        $DEPOSIT = false
                    end
                end
            when "W"
                print "Снимаемая сумма: "
                summa = gets.to_i
                withdraw = Withdraw.new(summa)
                sleep(1)
            when "T"
                print "Сумма для пополнения(не больше 1500): "
                summa = gets.to_i
                top_up = TopUp.new(summa)
                sleep(1)
            when "B"
                print 'Ваш счёт: '
                balance = Balance.new
                sleep(1)
            when "Q"
                puts ''
                puts '#' * 50
                break
            else
                puts 'Извините, но я не могу распознать ваш запрос. Давайте еще раз.' + "\n\n"
                sleep(1)
            end
        end
    end
end

BALANCE = 100
$DEPOSIT = true

if File.exists?('balance.txt')
    puts "Ваш банковский счёт присутствует в нашем банке." + "\n\n"
    sleep(0.5)
else
    file = File.open('balance.txt', "w")
    file.write BALANCE.to_s
    file.close
end

CashMachine.init