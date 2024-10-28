class LineItem
  attr_accessor :invoice, :product, :quantity, :percent_discount

  def initialize(invoice, product, quantity, percent_discount)
    @invoice = invoice
    @product = product
    @quantity = quantity
    @percent_discount = percent_discount
  end

  delegate :unit_price, to: :product

  def extended_price
    (product.unit_price * quantity * (1 - discount)).round(2)
  end

  private

  def discount
    percent_discount / 100.0
  end
end
