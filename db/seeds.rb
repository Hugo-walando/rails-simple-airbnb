# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
puts "Cleaning database..."
Flat.destroy_all

puts "Creating restaurants..."
appartement = {name: "Appartement", address: "7 Boundary St, London E2 7JE", description: "chinese", price_per_night: 2000, number_of_guests: 3}
villa =  {name: "Villa East", address: "56A Shoreditch High St, London E1 6PQ", description: "japanese", price_per_night: 12430, number_of_guests:14}
maison =  {name: "La Famille", address: "Euratehcnologies, Lebois Leblanc", description: "italian", price_per_night: 1234356, number_of_guests:5}
chez_vincent =  {name: "Chez Vincent", address: "Zone commerciale Farman, 51100 Reims", description: "french", price_per_night: 900, number_of_guests:7}
istanbul =  {name: "Istambul", address: "156 rue des mouchards, 75005 Paris", description: "belgian", price_per_night: 6754, number_of_guests:9}


[appartement, villa, maison, chez_vincent, istanbul].each do |attributes|
  restaurant = Flat.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
