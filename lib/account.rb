require_relative 'statement'

class Account

  attr_reader :balance, :statement_history

  DEFAULT_BALANCE = 100

  def initialize()
    @balance = DEFAULT_BALANCE
    @statement_history = []
  end

  def deposit(date, value)
    @balance += value
    save_history(date, value)
  end

  def withdraw(date, value)
    @balance -= value
    save_history(date, -value)
  end

  def history
    puts "date       || deposit || withdraw || balance"
    @statement_history.each {|x| puts x.string}
  end

  private

  def save_history(date, value)
    statement = Statement.new(date, value, @balance)
    statement.save_string
    @statement_history.push(statement)
  end

end
