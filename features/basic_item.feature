Feature:Basic Item
  In order buy a goods
  As a  consumer
  I want to know the tax of basic item

  Scenario:Get tax of a basic item
    Given have a basic item with original price 100
    When I view its tax
    Then I should see tax is 0.0

  Scenario Outline: Get final price of basic item
    Given have a basic item with original price <price>
    When I view its final price
    Then I should see final price is <final_price>
  Examples:
    | price | final_price |
    | 100   | 100         |
    |232    |232          |
    |223.23  |223.23      |



