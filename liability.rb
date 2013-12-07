class Liability
  attr_reader :employee
  def initialize(employee)
    @employee = employee
  end

  def amount_due
    @employee.annual_income * (@employee.tax_rate * 0.01)
  end

  def amount_owed
    (amount_due - @employee.tax_paid).round(2)
  end
end
