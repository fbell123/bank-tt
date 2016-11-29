describe Account do
  subject(:account) { described_class.new }

  it 'exists as a class' do
    expect(account.class).to eq Account
  end

  describe '#initialize' do
    it 'has a default balance to begin with' do
      expect(account.balance).to be Account::DEFAULT_BALANCE
    end

    it 'has an empty bank statement' do
      expect(account.history).to eq ([])
    end
  end

  describe '#deposit' do
    it 'increases the balance depending on input' do
      expect{ account.deposit(100) }.to change{account.balance}.from(Account::DEFAULT_BALANCE).to(200)
    end
  end

  describe '#withdraw' do
    it 'decreases the balance depending on input' do
      expect{ account.withdraw(50) }.to change{account.balance}.from(Account::DEFAULT_BALANCE).to(50)
    end
  end

end
