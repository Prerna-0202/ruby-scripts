class Account
    attr_reader :name, :balance
    def initialize(name,balance=100)
        @name=name
        @balance=balance
    end
    private
    def pin
        @pin=1234
    end
    def pin_error
        "Access denied: Incorrect pin."
    end
    public
    def display_balance(pin_number)
        puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
    end
    def withdraw(pin_number,amount)
        if pin_number == pin
            @balance -= amount
            puts "Withdrew #{amount}. New balance: $#{@balance}."
          else
            puts pin_error
          end
        end
end

my_account = Account.new("Prerna", 1_000_000)
my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)