class BankAccount
    @@accounts = 0
    def initialize
        accountInit
    end
    def display_acct_num
        puts @account_number
    end

    def display_checking
        puts "Checking account: $#{@c_balance}"
    end

    def display_saving
        puts "Saving account: $#{@s_balance}"
    end

    def c_deposit(amount)
        @c_balance += amount
        self
    end

    def s_deposit(amount)
        @s_balance += amount
        self
    end

    def c_widtraw(amount)
        if amount <= @c_balance
            @c_balance -= amount
        else
            puts "Insufficient funds"
        end
        self
    end

    def s_withdraw(amount)
        if amount <= @s_balance
            @s_balance -= amount
        else
            puts "Insufficient funds"
        end
        self
    end

    def total
        total = @s_balance + @c_balance
        puts "Totoal account balance: $#{total}"
    end

    def account_number
        puts @@accounts
    end

    def account_information
        self.display_acct_num
        self.display_checking
        self.display_saving
        self.total
        puts "Interest Rate: #{@interest_rate}%"
    end

    private
    def accountInit
        digits = [1,2,3,4,5,6,7,8,9,0]
        @account_number  = digits.shuffle.slice(0, 9).join
        @c_balance = 100
        @s_balance = 500
        @interest_rate = 0.01
        @@accounts += 1
        self
    end
end

account01 = BankAccount.new()
account01.account_information