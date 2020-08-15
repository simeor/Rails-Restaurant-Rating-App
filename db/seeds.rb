# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "clean up data"
Restaurantx.destroy_all
puts 'data clean'


12.times do
  restaurant = Restaurantx.create(
   name:Faker::Restaurant.name,
   adress:Faker::Address.street_address,
   stars:rand(1..5)
    )
  puts "created"
end
puts "done"
