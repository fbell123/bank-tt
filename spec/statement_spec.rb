describe Statement do
  subject(:statement) {described_class.new}
  subject(:transaction1) {double("account")}

  describe "#initialize" do
    it "empty statement history" do
      expect(statement.statement_history).to eq ([])
    end
  end

  # describe "history" do
  #   it 'logs a list of previous transactions' do
  #     p statement.statement_history
  #     expect(statement.statement_history.last).to be transaction1
  #   end
  # end

end
