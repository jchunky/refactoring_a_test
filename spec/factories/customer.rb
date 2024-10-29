FactoryBot.define do
  factory :customer do
    number { 99 }
    name { "John" }
    last_name { "Doe" }
    percent_discount { BigDecimal(30) }
    billing_address { create(:address) }
    shipping_address { create(:address) }

    to_create do |instance|
      DB.save(instance)
      instance
    end
  end
end
