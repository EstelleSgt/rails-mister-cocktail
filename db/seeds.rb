# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Ingredient.destroy_all

puts "Creating ingredients..."
ingredient1 = { name: "lemon" }
ingredient2 = { name: "ice" }
ingredient3 = { name: "mint leaves" }
ingredient4 = { name: "strawberry" }
ingredient5 = { name: "sugar" }

[ingredient1, ingredient2, ingredient3, ingredient4, ingredient5].each do |attributes|
  ingredient = Ingredient.create!(attributes)
  puts "Created #{ingredient.name}"
end
puts "Finished!"
