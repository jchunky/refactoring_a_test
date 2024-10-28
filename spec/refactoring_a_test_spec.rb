RSpec.describe RefactoringATest do
  it "add_item_quantity several quantity v1" do
    customer = create(:customer, percent_discount: 30)
    product = create(:product, unit_price: BigDecimal("19.99"))
    invoice = create(:invoice, customer: customer)

    invoice.add_item_quantity(product, 5)

    expect(invoice.line_items).to contain_exactly(
      have_attributes(
        invoice: invoice,
        product: product,
        quantity: 5,
        percent_discount: 30,
        unit_price: BigDecimal("19.99"),
        extended_price: BigDecimal("69.97")
      )
    )
  end
end
