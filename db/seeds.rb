# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Restaurant.destroy_all

mildreds = { name: "Mildreds", address: "Soho", phone_number: "12345", category: "italian" }
holy_carrot = { name: "Holy Carrot", address: "Knightsbridge", phone_number: "12345", category: "japanese" }
spicebox = { name: "Spicebox", address: "Leytonstone", phone_number: "12345", category: "chinese" }
power_plant = { name: "Powerplant", address: "Camden", phone_number: "12345", category: "belgian" }
black_cat_cafe = { name: "Black Cat Cafe", address: "Cambridge", phone_number: "12345", category: "french" }

[mildreds, holy_carrot, spicebox, power_plant, black_cat_cafe].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
