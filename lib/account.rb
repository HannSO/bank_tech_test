require './lib/bank_statement.rb'

class Account

attr_reader :balance

  def initialize (bank_statement = Bank_statement.new)
    @balance = 0.00
    @bank_statement = bank_statement
  end

  def withdraw(amount)
    account_change = -amount
    update_balance(account_change)
  end

  def deposit(amount)
    account_change = amount
    update_balance(account_change)
  end

private

  def update_balance(value)
    @balance += value
    time_updated = Time.now
    @bank_statement.create_entry(value, balance, time_updated)
  end

end
