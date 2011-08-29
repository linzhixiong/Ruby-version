
Given /^have a basic item with original price (.*)/ do |price|
  @basic_item=BasicItem.new(false, false, price)
end
When /^I view its tax$/ do
  @tax=@basic_item.get_tax
end
Then /^I should see tax is (.*)$/ do |tax|
  @tax.should==tax.to_f
end
When /^I view its final price$/ do
  @final_price=@basic_item.get_final_price
end
Then /^I should see final price is (.*)$/ do|final_price|
@final_price.should==final_price.to_f
end