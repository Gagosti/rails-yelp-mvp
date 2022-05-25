# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all

dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "12991774562", category: 'italian' }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "12991235478", category: 'french' }
vintao = { name: "Vintao", address: "Vila madalena", phone_number: "12991715599", category: 'belgian' }
bom_prato = { name: "Bom Prato", address: "Av.Italia", phone_number: "12982769132", category: 'japanese' }
peperone = { name: "Peperone", address: "Av. 9 de julho", phone_number: "12985774785", category: 'italian' }

[ dishoom, pizza_east, vintao, bom_prato, peperone ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
