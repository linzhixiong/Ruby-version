Given /^have a Imported item with original price (.*)$/ do |original_price|
  @imported_item=ImportedItem.new(BasicItem.new(false, true, original_price))
end
When /^I view its imported tax$/ do
  @imported_tax =@imported_item.get_tax.round(2)
end

Then /^I should see imported tax is (.*)$/ do |tax|
  @imported_tax.should==tax.to_f
end
Then /^I should see final imported item price is (.*)$/ do |final_price|
  @final_price.should==final_price.to_f
end
When /^I view imported item's final price$/ do
  @final_price=@imported_item.get_final_price.round(2)
end