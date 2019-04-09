# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Basket.destroy_all
baskets_attributes = [
{
  name:            "Bakka",
  position:        "Forward",
  nationality:     "Jamaica",
  average_score:   20,
  team_mate:       "Bakayarou"
},
{
  name:            "Haward",
  position:        "Center",
  nationality:     "USA",
  average_score:   10,
  team_mate:       "David"
},
{
  name:            "Green",
  position:        "Power Forward",
  nationality:     "USA",
  average_score:   10,
  team_mate:       "Boris"
},
{
  name:            "Pozingis",
  position:        "Shoter",
  nationality:     "Latvia",
  average_score:   25,
  team_mate:       "Anthoney"
},
{
  name:            "Iverson",
  position:        "Guard",
  nationality:     "USA",
  average_score:   30,
  team_mate:       "Mutombo"
},
{
  name:            "Kobe",
  position:        "Guard",
  nationality:     "USA",
  average_score:   40,
  team_mate:       "Pau Gasol"
},
{
  name:            "Pau Gasol",
  position:        "Power Foward",
  nationality:     "Spain",
  average_score:   20,
  team_mate:       "Kobe"
}
]

baskets_attributes.each do |params|
  Basket.create!(params)
end

puts "Finished!"
