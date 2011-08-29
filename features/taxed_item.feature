Feature:Taxed Item
  In order buy a goods
  As a  consumer
  I want to know the tax of the taxed item

  Scenario Outline: Get tax of a taxed item
    Given have a taxed item with original price <original_price>
    When I view its taxed tax
    Then I should see taxed tax is <tax>
  Examples:
    | original_price | tax  |
    | 100            | 10   |
    | 202            | 20.2 |

  Scenario Outline: Get final price of taxed item
    Given have a taxed item with original price <price>
    When I view taxed item's final price
    Then I should see final taxed item price is <final_price>
  Examples:
    | price | final_price |
    | 100   | 110         |
    | 200   | 220         |
    | 32.89 | 36.18       |



