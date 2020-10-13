class BankingAppView
  def clear
    sleep 1.2
    system("clear")
  end

  def welcome
    puts "Welcome to the Banking App"
  end

  def get_password
    puts "Please enter your password"
    password = gets.chomp
  end

  def get_option
    puts 'What would you like to do? (options: balance, deposit, withdraw or exit)'
    return gets.chomp.to_s
  end 

  def show_balance(balance) 
    puts "Your current balance is $#{balance}"
  end

  def withdraw_input
    puts "how much would you like to withdraw?"
    w_amount = gets.chomp.to_i
  end

  def deposit_input
    puts "how much would you like to deposit?"
    d_amount = gets.chomp.to_i
  end

  def invalid_input 
    puts "Invalid, please try again"
  end

  def invalid_withdraw(balance)
    puts "You do not have enough money to withdraw that amount! Your balance is $#{balance}"
  end

  def exit_msg
    puts "Thank you for using the banking app"
  end

  def thankyou_msg
    puts "Thankyou, you are now logged in"
  end

 
end
