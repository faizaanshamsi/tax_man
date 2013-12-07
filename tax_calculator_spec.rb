require_relative 'spec_helper'

describe TaxCalculator do
  let(:employee) { Employee.new(100_000, 20_000, 25, 'John', 'Smith') }

  it 'takes in an employee to calculate their tax liability' do
    expect(TaxCalculator.liability(employee)).to be_an_instance_of(Liability)
  end
end
