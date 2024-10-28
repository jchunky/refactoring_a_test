FactoryBot.define do
  factory :product do
    number { 88 }
    code { "SomeWidget" }

    to_create do |instance|
      DB.save(instance)
      instance
    end
  end
end
