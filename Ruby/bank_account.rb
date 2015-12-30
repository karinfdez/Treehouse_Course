class BankAccount
	attr_reader :name	
	def initialize(name)
		@name=name
		#transactions for debit and credit accounts.
		@transactions=[]
		add_transaction("Beginning balance",0)
	end

	def add_transaction(description,amount)
		@transactions.push(description: description,amount: amount)
	end

	def credit(description,amount)
		add_transaction(description,amount)
	end

	def debit(description,amount)
		#negative the amoun because it's a debit account
		add_transaction(description,-amount)
	end

	def balance
		balance=0
    	@transactions.each do |transaction|
    	balance+=transaction[:amount]
        end
        return balance
    end

    def print_register
    	puts "#{@name}'s Bank Account"

    	puts "Description".ljust(35)+"Amount"
    	puts '-'*45
    	@transactions.each do |transaction|
    		puts transaction[:description].ljust(30) + sprintf("%0.2f",transaction[:amount]).to_s.rjust(10)
    	end
    	puts '-'*45
    	puts "Total Balance:".ljust(35)+sprintf("%0.2f",balance).to_s
    	puts '-'*45
    end

    def to_s
    	#To print the balance with 2 digital numbers after the .
    	 "Name: #{@name}, Balance: #{sprintf("%0.2f",balance)}"
    end
end

bank_account=BankAccount.new("Karin")
bank_account.credit("Paycheck",100)
puts bank_account.debit("Groceries",40)
puts bank_account.inspect
puts bank_account
puts "Register: "
bank_account.print_register















