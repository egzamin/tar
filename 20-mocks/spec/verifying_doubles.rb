require_relative '../lib/a.rb'
require_relative '../lib/b.rb'

RSpec.describe 'Account' do
  xit 'calculates bank charge for "gold" account' do
    b = B.new('gold')
    a = A.new('john', b)

    bank_charge = a.bank_charge
    expect(bank_charge).to eq(2)
  end

  xit 'mocks AccountType' do
    # b = B.new('gold')
    b = instance_double('B')
    allow(b).to receive(:charge).and_return(3)

    a = A.new('john', b)

    bank_charge = a.bank_charge
    expect(bank_charge).to eq(3)
    # expect(bank_charge).to be_a_kind_of(Integer)
  end
end
