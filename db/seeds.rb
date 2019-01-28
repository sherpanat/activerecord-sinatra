require 'faker'

10.times do
  Restaurant.create(
    city: Faker::Address.city,
    name: Faker::Company.name
  )
end
