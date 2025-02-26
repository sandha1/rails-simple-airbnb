# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Flat.destroy_all

puts "Cleaned my flat database"

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Cosy Appartment',
  address: '12 Covent Street',
  description: 'A small but charming appartment for a romantic gateway',
  price_per_night: 120,
  number_of_guests: 2
)

Flat.create!(
  name: 'Big Loft',
  address: '3 Luminous Street',
  description: 'A spacious loft for big parties',
  price_per_night: 60,
  number_of_guests: 6
)

Flat.create!(
  name: 'One Flat',
  address: '1 One Street',
  description: 'A flat for the top',
  price_per_night: 111,
  number_of_guests: 1
)

puts "Created 4 new flats"
