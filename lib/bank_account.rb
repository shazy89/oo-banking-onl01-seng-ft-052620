  require "pry"
class BankAccount
attr_accessor  :balance, :status
  attr_reader :name  
    def initialize(name)
       @name = name
       @balance = 1000
       @status = "open"
    end
#binding.pry
    def deposit(amount)
        self.balance += amount
    end

    def display_balance
        "Your balance is $#{@balance}."
    end
        #binding.pry
    def valid?
        if @status == "open" && balance > 0
            true
        else
            false
        end
    end

    def close_account
        @status = "closed"
    end


end









#ruby lib/bank_account.rb