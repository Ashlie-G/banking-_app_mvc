class Account
  attr_reader :password, :balance
  def initialize(password, balance)
    @password = password
    @balance = 0
  end

  def deposit(d_amount)
    @balance += d_amount
  end
      
  def withdraw(w_amount)
    @balance -= w_amount if @balance >= w_amount
  end
    
end