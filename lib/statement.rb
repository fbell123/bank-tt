class Statement

  attr_reader :date, :value, :balance, :string

  def initialize(date, value, balance)
    @date = date
    @value = "%.2f" % value
    @balance = "%.2f" % balance
    @string = ""
  end

  def save_string
    deposit_space = " " * (8 - @value.length)
    withdraw_space = " " * (9 - @value.length)
    if @value.to_f > 0
      @string += ("#{@date}" + " ||" + " #{@value}" + "#{deposit_space}" + "||" + "          " + "||" + " #{@balance}")
    elsif @value.to_f < 0
      @string += ("#{@date}" + " ||" + "         " + "||" + " #{@value}" + "#{withdraw_space}" + "||" + " #{@balance}")
    end
  end

end
