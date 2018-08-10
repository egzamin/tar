class A
  def initialize(name, account_type)
    @name = name
    @account_type = account_type
  end

  def bank_charge
    @account_type.charge
  end
end
