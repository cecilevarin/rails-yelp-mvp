# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
5.times do |i|
  restaurant = Restaurant.new(
    name:"Restaurant #{i}",
    address: ["Marseille", "Paris", "Lyon", "Lille"].sample,
    phone_number: "000000000000",
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "Creating restaurant #{i}"
  restaurant.save!
end
