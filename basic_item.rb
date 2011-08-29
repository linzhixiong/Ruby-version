class BasicItem
  attr_reader :is_imported
  attr_reader :is_taxed
  attr_reader :original_price
  attr_reader :name

  def initialize is_taxed, is_imported, original_price, name="not have name"
    @is_taxed=is_taxed;
    @is_imported=is_imported;
    @original_price=original_price;
    @name=name
  end

  def get_tax
    0.00
  end

  def get_final_price
    (@original_price.to_f+get_tax).round(2)
  end
end