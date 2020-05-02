
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
 {
  name: "Pressure Drop",
  address: "Unit 6, Lockwood Industrial Park, Mill Mead Rd, London N17 9QP",
  website: "www.pressuredropbrewing.co.uk",
 },
 {
  name: "Cloudwater",
  address: "7-8, Piccadilly Trading Estate, Manchester M1 2NP",
  website: "https://cloudwaterbrew.co",
 },


]

Brewery.create!(breweries_attributes)

puts 'Breweries created'

puts 'creating Cans'

file = URI.open('https://res.cloudinary.com/dvrokiqjr/image/upload/v1588439399/pale_fire_pressure_drop_dxgpra.jpg')
can = Can.new(
  name: "Pale Fire",
  abv: "4.8%",
  brewery_id: 4,
  hop_id: 1)
can.photo.attach(io: file, filename: 'new-can.jpg', content_type: 'image/jpg')
can.save!

file = URI.open('https://res.cloudinary.com/dvrokiqjr/image/upload/v1588439416/strongest_of_strange_verdant_xsilqx.jpg')
can = Can.new(
  name: "Strongest Of The Strange",
  abv: "5.2%",
  brewery_id: 1,
  hop_id: 4)
can.photo.attach(io: file, filename: 'new-can.jpg', content_type: 'image/jpg')
can.save!


file = URI.open('https://res.cloudinary.com/dvrokiqjr/image/upload/v1588439434/chubbles_cloudwater_gytu69.jpg')
can = Can.new(
  name: "Chubbles",
  abv: "10%",
  brewery_id: 5,
  hop_id: 5)
can.photo.attach(io: file, filename: 'new-can.jpg', content_type: 'image/jpg')
can.save!

file = URI.open('https://res.cloudinary.com/dvrokiqjr/image/upload/v1588439380/lorikeet_pressure_drop_hp1gsg.jpg')
can = Can.new(
  name: "Lorikeet",
  abv: "10%",
  brewery_id: 4,
  hop_id: 7)
can.photo.attach(io: file, filename: 'new-can.jpg', content_type: 'image/jpg')
can.save!

puts 'Cans created'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
