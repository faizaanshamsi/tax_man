require_relative 'spec_helper'

require 'pry'

people = []
CSV.foreach('tax_data.csv', headers:true) do |row|
  people << Employee.new(row[2].to_i, row[3].to_i, row[4].to_i, row[0], row[1])
end

liabilities = []
people.each do |person|
  liabilities << TaxCalculator.liability(person)
end

liabilities.each do |liab|
  print "#{liab.employee.first_name} #{liab.employee.last_name}"
  puts " has a tax liability of #{liab.amount_owed}" if liab.amount_owed >= 0
  puts " will recieve a refund of #{liab.amount_owed.abs}" if liab.amount_owed < 0
end

