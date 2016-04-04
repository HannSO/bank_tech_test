require 'account'

describe Account do
subject (:account) { described_class.new }
let(:bank_statement){double(:bank_statement, :create_entry=> 'yes')}

  describe "#balance" do
    it 'initializes with a balance of 0' do
      expect(account.balance).to eq (0.00)
    end
  end

  # describe "#update_balance" do
  #   it 'updates the balance by the amount passed in' do
  #     expect{account.update_balance(10.00)}.to change{account.balance}.by(10.00)
  #   end
  # end

  describe "#withdraw" do
    it 'updates the balance by minus the amount submitted' do
      expect{account.withdraw(10.00)}.to change{account.balance}.by(-10.00)
    end
    it 'calls on the bank_statement object and asks it to create a new entry' do
      allow(bank_statement).to receive(:create_entry)
      expect(bank_statement).to receive(:create_entry)
      account.withdraw(10)
    end
  end

  describe "#desposit" do
    it 'updates the balance by amount' do
      expect{account.deposit(10.00)}.to change{account.balance}.by(10.00)
    end
  end
end
