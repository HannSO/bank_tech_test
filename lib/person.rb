require './lib/account.rb'

class Person

  def initialize (account = Account.new)
    @account = account
  end

end
