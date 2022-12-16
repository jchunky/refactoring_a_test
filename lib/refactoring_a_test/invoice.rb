class Invoice
  attr_accessor :line_items, :customer

  def initialize(args)
    @customer = args.fetch(:customer)
    @line_items = []
  end

  def add_item_quantity(product, quantity)
    @line_items << LineItem.new(self, product, quantity, customer.percent_discount)
  end

  private
end
