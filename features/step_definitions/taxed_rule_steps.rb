Given /^have have a imported item with price (.*)$/ do |original_price|
  @basic_item=BasicItem.new(false, true, original_price)
end
When /^I apply it to rule$/ do
  @rule=TaxedRule.new
  @basic_item=@rule.apply(@basic_item)
end
Then /^the final price should be (.*)$/ do |final_price|
  @final_price=@basic_item.get_final_price
  @final_price.should==final_price.to_f
end
Given /^have a taxed item with price (.*)$/ do |original_price|
  @basic_item=BasicItem.new(true, false, original_price)
end
Given /^have a taxed and imported item with price (.*)$/ do |original_price|
  @basic_item=BasicItem.new(true, true, original_price)
end