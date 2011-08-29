class TaxedRule
  def apply basic_item
    basic_item.is_taxed ? basic_item=TaxedItem.new(basic_item) :basic_item
    basic_item.is_imported ? basic_item=ImportedItem.new(basic_item) :basic_item
    return basic_item
  end

  def convert basic_items
    items=Array.new
    basic_items.each { |item| items.push (apply(item)) }
    return items
  end
end