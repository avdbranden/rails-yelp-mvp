# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

require 'faker'

Restaurant.destroy_all
Review.destroy_all
10.times do
  restaurant = Restaurant.new({
    name: Faker::Company.name,
    address: Faker::Address.street_address,
    phone_number: "333 333 3333",
    category: CATEGORIES.sample
  })
  restaurant.save
  (2..5).to_a.sample.times do
    review = Review.new({
      content: Faker::Lorem.sentence,
      rating: (0..5).to_a.sample.to_i,
      restaurant_id: restaurant.id
    })
    review.save
  end
end
