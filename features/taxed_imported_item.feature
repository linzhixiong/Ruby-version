Feature:Taxed and Imported Item
  In order buy a goods
  As a  consumer
  I want to know the tax of the taxed and imported item

  Scenario Outline: Get tax of a taxed and imported item
    Given have a taxed and imported item with original price <original_price>
    When I view taxed and imported item tax
    Then I should see taxed and imported item tax is <tax>
  Examples:
    | original_price | tax  |
    | 100            | 15   |
    | 202            | 30.3 |

  Scenario Outline: Get final price of taxed and imported item
    Given have a taxed and imported item with original price <price>
    When I view taxed and imported item's final price
    Then I should see final taxed and imported item price is <final_price>
  Examples:
    | price | final_price |
    | 100   | 115         |
    | 202   | 232.3         |
    | 32.89 | 37.82        |



