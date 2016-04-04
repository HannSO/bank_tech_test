require 'bank_statement'

describe Bank_statement do
subject (:statement) { described_class.new }

  describe "#create_entry" do
    context "positive input(credit) from a withdrawel" do
      it "puts a hash with value inputted as credit, balance, and time, into the history" do
        expect(statement.create_entry(5, 7, '9/8/10'))
        expect(statement.history).to eq([{time: '9/8/10', credit: 5, balance: 7 }])
      end
    end
  end

  describe "#history" do
    it "initializes with an empty log" do
      expect(statement.history).to eq([])
    end
  end
end
