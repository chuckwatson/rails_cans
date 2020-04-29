
puts "Cleaning the Cans database"
Hop.destroy_all


puts 'Creating Hops'

hops_attributes = [

  {
    name: "Amarillo",
  },

  {
    name: "California Cluster",
  },

  {
    name: "Calypso",
  },

  {
    name: "Centennial",
  },

  {
    name: "Chinook",
  },

  {
    name: "Citra",
  },

  {
    name: "Mosaic",
  },

  {
    name: "Simcoe",
  },

  {
    name: "Waimea",
  },
]

Hop.create!(hops_attributes)

puts 'Hops created'

puts 'Creating Breweries'



breweries_attributes = [

 {
  name: "Verdant",
  address: "30, Parkengue Kernick Industrial Estate, Penryn TR10 9EP",
  website: "https://verdantbrewing.co",
 },
 {
  name: "Beavertown",
  address: "Unit 17, Lockwood Industrial Park, Mill Mead Rd, London N17 9QP",
  website: "www.beavertownbrewery.co.uk",
 },
 {
  name: "Deya",
  address: "33/34, Lansdown Industrial Estate, Gloucester Rd, Cheltenham GL51 8PL",
  website: "www.deyabrewing.com",
 },

]

puts 'Breweries created'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
