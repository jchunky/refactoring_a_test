FactoryBot.define do
  factory :address do
    street { "1222 1st St SW" }
    city { "Calgary" }
    province { "Alberta" }
    postal_code { "T2N 2V2" }
    country { "Canada" }

    to_create do |instance|
      DB.save(instance)
      instance
    end
  end
end
