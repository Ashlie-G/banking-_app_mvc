# Write a program to implement a simple bank account.

# Main App
# def clear
#   sleep 1.2
#   system('clear')
# end

# def banking_app
#   balance = 0
#   loop do
#     puts 'Please enter your password'
#     password = gets.chomp
#     if password == 'password'
#       puts 'Thank you'
#       clear
#       break
#     else
#       puts 'invalid, please try again'
#       clear
#     end
#   end
#   puts 'Welcome to the banking app'
#   loop do
#     puts 'What would you like to do? (options: balance, deposit, withdraw or exit)'
#     input = gets.chomp.to_s

#     case input

#     when 'balance'
#       puts "your balance is $#{balance}"
#       clear
#     when 'deposit'
#       puts 'how much would you like to deposit?'
#       d_amount = gets.chomp.to_i
#       balance += d_amount
#       puts "Thank you, your balance is $#{balance}"
#       clear
#     when 'withdraw'
#       puts 'how much would you like to withdraw?'
#       w_amount = gets.chomp.to_i
#       if w_amount > balance
#         puts "You don't have enough money to withdraw that amount, your balance is $#{balance}"
#         clear
#       else
#         balance -= w_amount
#         puts "thank you, your balance is $#{balance}"
#         clear
#       end
#     when 'exit'
#       puts 'thank you for using the banking app'
#       break
#     else
#       'invalid, please try again'
#       clear
#     end
#   end
# end
require_relative "controllers/bankingapp_controller"

app = BankingAppController.new
app.run
