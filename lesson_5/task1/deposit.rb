class Deposit
    def initialize
        puts "Депозит можно назначить только один раз за одну сессию."
        @deposit = ((File.open('balance.txt').read.to_i * 2) / 100).to_i
        puts "Ваш депозит это - 2% от баланса вашей карты, тоесть #{@deposit} рублей."
        @balance = File.open('balance.txt')
        @balance_data = @balance.read.split("\n")
        @balance.close
        File.delete('balance.txt')
        @balance_data = @balance_data[0].to_i
        @balance = File.open('balance.txt', "w")
        @balance.write (@balance_data + @deposit).to_s
        @balance.close
        puts "Депозит назначен." + "\n\n"
        sleep(1)
    end
end