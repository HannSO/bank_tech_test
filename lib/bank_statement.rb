class Bank_statement

attr_reader :history

  def initialize
    @history = []
  end

  def create_entry(value, balance, time_updated)
    if value > 0
    entry = {time: time_updated, credit: value, balance: balance}
    else
    entry = {time: time_updated, deposit: value, balance: balance}
    end

    add_entry_to_history(entry)
  end

private

  def add_entry_to_history(entry)
    history << entry
  end

  def value_type(value)
    if value > 0
      credit
    else
      value
    end
  end
end
