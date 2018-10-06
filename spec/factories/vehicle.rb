FactoryBot.define do
  factory :vehicle do
    customer
    year { 1955 }
    make { "Lincoln" }
    model { "Futura" }
    mileage { 5000 }
  end
end
