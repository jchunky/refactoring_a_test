require "bigdecimal"

RSpec.describe RefactoringATest do
  it "add_item_quantity several quantity v1" do
    customer = FactoryBot.create(:customer, percent_discount: BigDecimal("30"))
    product = FactoryBot.create(:product, unit_price: BigDecimal("19.99"))
    invoice = FactoryBot.create(:invoice, customer:)

    invoice.add_item_quantity(product, 5)

    expect(invoice.line_items).to contain_exactly(
      having_attributes(
        invoice:,
        product:,
        quantity: 5,
        percent_discount: 30,
        unit_price: BigDecimal("19.99"),
        extended_price: BigDecimal("69.97")
      )
    )
  end
end
