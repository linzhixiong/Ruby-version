require File.dirname(__FILE__) + '/features/support/env'

def print_price items

  total_price=0.00
  total_taxes=0.00
  items.each { |item| puts "1 #{item.name}:#{item.original_price}"
  total_price +=item.get_final_price
  total_taxes +=item.get_tax }

  puts "Sales Taxes:#{total_taxes}"
  puts "Total:#{total_price}"
end

items_one= [BasicItem.new(false, false, 12.49),
            BasicItem.new(true, false, 14.99),
            BasicItem.new(false, false, 0.85)]

items_one=TaxedRule.new.convert(items_one)

print_price items_one


items_two= [BasicItem.new(false, true, 10.00),
            BasicItem.new(true, true, 47.50)]
items_two=TaxedRule.new.convert(items_two)

print_price items_two

items_three= [BasicItem.new(true, true, 27.99),
              BasicItem.new(true, false, 18.99),
              BasicItem.new(false, false, 9.75),
              BasicItem.new(false, true, 11.25)
]

items_three=TaxedRule.new.convert(items_three)

print_price items_three


