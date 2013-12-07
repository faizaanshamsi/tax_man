require 'rspec'
require_relative 'employee'

describe Employee do 
  let(:employee) { Employee.new(100_000, 20_000, 25, first_name, 'Smith') }
  let(:first_name) { 'John' }

  it 'creates an employee with first name given' do
    expect(employee.first_name).to eql(first_name)
  end

  it 'creates an employee with last name given' do
    expect(employee.last_name).to eql('Smith')
  end

  it 'creates an employee with annual income given' do 
    expect(employee.annual_income).to eql(100_000)
  end

  it 'creates an employee with tax paid given' do
    expect(employee.tax_paid).to eql(20_000)
  end

  it 'creates an employee with tax paid given' do
    expect(employee.tax_rate).to eql(25)
  end
  # Data missing conditions
  it 'creates an employee with placeholder first name is missing' do
    employee = Employee.new(100_000, 20_000, 25, nil,'Smith')
    expect(employee.first_name).to eql("[First Name]")
  end

  it 'creates an employee with placeholder last name is missing' do
    employee = Employee.new(100_000, 20_000, 25, 'John', nil)
    expect(employee.last_name).to eql('[Last Name]')
  end

  it 'creates an employee with placeholder annual income is missing' do
    employee = Employee.new(nil, 20_000, 25, 'John', 'Smith')
    expect(employee.annual_income).to eql(0)
  end

  it 'creates an employee with placeholder tax paid is missing' do
    employee = Employee.new(100_000, nil, 25, 'John', 'Smith')
    expect(employee.tax_paid).to eql(0)
  end

  it 'creates an employee with placeholder tax rate is missing' do
    employee = Employee.new(100_000, 20_000, nil, 'John', 'Smith')
    expect(employee.tax_rate).to eql(0)
  end
  
end