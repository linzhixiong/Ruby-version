Given /^have a taxed and imported item with original price (.*)$/ do |original_price|
  @taxed_imported_item=BasicItem.new(true, true, original_price)
  @taxed_imported_item =TaxedItem.new(@taxed_imported_item)
  @taxed_imported_item=ImportedItem.new(@taxed_imported_item)
end
When /^I view taxed and imported item tax$/ do
  @tax=@taxed_imported_item.get_tax
end
Then /^I should see taxed and imported item tax is (.*)$/ do |tax|
  @tax.should==tax.to_f
end
When /^I view taxed and imported item's final price$/ do
  @final_price=@taxed_imported_item.get_final_price
end
Then /^I should see final taxed and imported item price is (.*)$/ do |final_price|
  @final_price.should==final_price.to_f
end