class Balance
    def initialize
        @file = File.open('balance.txt')
        @file_data = @file.read + "\n\n"
        @file.close
        puts @file_data
    end
end