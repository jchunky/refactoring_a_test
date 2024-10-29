FactoryBot.define do
  factory :product do
    number { 88 }
    code { "SomeWidget" }
    unit_price { BigDecimal("19.99") }

    to_create do |instance|
      DB.save(instance)
      instance
    end
  end
end
