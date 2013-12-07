require_relative 'spec_helper'

describe Liability do
  let(:employee) { Employee.new(100_000, 20_000, 25, 'John', 'Smith') }
  let(:liability) { Liability.new(employee)}

  it 'should expose an employee' do
    expect(liability.employee).to eql(employee)
  end

  it 'should calculate the amount of tax due' do
    expect(liability.amount_due).to eql(25_000.0)
  end

  it 'should calculate the tax refund' do
    expect(liability.amount_owed).to eql(5_000.0)
  end

end
