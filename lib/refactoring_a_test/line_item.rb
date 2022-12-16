LineItem = Struct.new(:invoice, :product, :quantity, :percent_discount) do
  def unit_price
    product.unit_price
  end

  def extended_price
    (product.unit_price * quantity * (1 - discount)).round(2)
  end

  private

  def discount
    percent_discount / 100
  end
end
