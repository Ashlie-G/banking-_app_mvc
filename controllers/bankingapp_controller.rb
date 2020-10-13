require_relative '../models/account_functions'
require_relative '../views/banking_app_view'

class BankingAppController
  def initialize
    @new_account = Account.new('password', 0)
    @banking_view = BankingAppView.new
  end

  def run
    @banking_view.welcome
    loop do
      if @banking_view.get_password == 'password'
      break
      else
        @banking_view.invalid_input
      end
    end

    loop do
      input = @banking_view.get_option
      case input
      when 'balance'
        @banking_view.show_balance(@new_account.balance)
        @banking_view.clear
      when 'deposit'
        input = @banking_view.deposit_input
        @new_account.deposit(input)
        @banking_view.show_balance(@new_account.balance)
        @banking_view.clear
      when 'withdraw'
        input = @banking_view.withdraw_input
        if @new_account.withdraw(input)
          @banking_view.show_balance(@new_account.balance)
          else
          @banking_view.invalid_withdraw(@new_account.balance)
          @banking_view.clear
        end
      when 'exit'
        @banking_view.exit_msg
      break
      else
        @banking_view.invalid_input
        @banking_view.clear
      end
    end
  end
end
