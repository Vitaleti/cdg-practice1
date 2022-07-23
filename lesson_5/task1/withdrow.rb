class Withdraw
    def initialize(summa)
        @summa = summa
        if @summa <= 0 || @summa > File.open('balance.txt').read.to_i
            puts "Ошибка! Недостаток средств на карте, либо невозможность их вывода." + "\n\n"
        else
            @balance = File.open('balance.txt')
            @balance_data = @balance.read.split("\n")
            @balance.close
            File.delete('balance.txt')
            @balance_data = @balance_data[0].to_i
            @balance = File.open('balance.txt', "w")
            @balance.write (@balance_data - @summa).to_s
            @balance.close
            puts "Сумма снята." + "\n\n"
        end
    end
end