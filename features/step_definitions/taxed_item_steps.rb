Given /^have a taxed item with original price (.*)$/ do |original_price|
  @taxed_item=TaxedItem.new(BasicItem.new(true, false, original_price))
end
When /^I view its taxed tax$/ do
  @tax=@taxed_item.get_tax
end
Then /^I should see taxed tax is (.*)$/ do |tax|
  @tax.should==tax.to_f
end
When /^I view taxed item's final price$/ do
  @final_price=@taxed_item.get_final_price
end
Then /^I should see final taxed item price is (.*)$/ do |final_price|
  @final_price.should==final_price.to_f
end