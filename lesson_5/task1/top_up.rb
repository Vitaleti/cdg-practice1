class TopUp
    def initialize(summa)
        @summa = summa
        if @summa <= 0 || @summa > 1500
            puts "Ошибка! Слишком большая, либо невозможная сумма для пополнения баланса." + "\n\n"
        else
            @balance = File.open('balance.txt')
            @balance_data = @balance.read.split("\n")
            @balance.close
            File.delete('balance.txt')
            @balance_data = @balance_data[0].to_i
            @balance = File.open('balance.txt', "w")
            @balance.write (@balance_data + @summa).to_s
            @balance.close
            puts "Баланс увеличен." + "\n\n"
        end
    end
end