Feature:Imported Item
  In order buy a goods
  As a  consumer
  I want to know the tax of Imported item

  Scenario:Get tax of a Imported item
    Given have a Imported item with original price 100
    When I view its imported tax
    Then I should see imported tax is 5

  Scenario Outline: Get final price of Imported item
    Given have a Imported item with original price <price>
    When I view imported item's final price
    Then I should see final imported item price is <final_price>
  Examples:
    | price | final_price |
    | 100   | 105         |
    |200    |210          |



