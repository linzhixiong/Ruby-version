class TaxedItem< BasicItem
  def initialize (basic_item)
    super(basic_item.is_taxed, basic_item.is_imported, basic_item.original_price)
    @basic_item=basic_item
  end

  def get_tax
    tax= @basic_item !=nil ? @basic_item.get_tax.to_f+ @original_price.to_f*0.1 : @original_price.to_f*0.1
    return tax.round(2)
  end
end