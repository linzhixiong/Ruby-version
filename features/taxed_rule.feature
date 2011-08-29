Feature:Taxed rule
  In order calculate the tax
  As a admin
  I want to apply the taxed rule to all kind items


  Scenario Outline: Apply the taxed rule to imported items
    Given have have a imported item with price <original_price>
    When I apply it to rule
    Then the final price should be <final_price>
  Examples:
    | original_price | final_price |
    | 100            | 105         |
    | 220            | 231         |


  Scenario Outline: Apply the taxed rule  to taxed item
    Given have a taxed item with price <original_price>
    When I apply it to rule
    Then the final price should be <final_price>
  Examples:
    | original_price | final_price |
    | 100            | 110         |
    | 220            | 242         |


  Scenario Outline: Apply the taxed rule to taxed and imported item
    Given have a taxed and imported item with price <original_price>
    When I apply it to rule
    Then the final price should be <final_price>
  Examples:
    | original_price | final_price |
    | 100            | 115         |
    | 220            | 253         |