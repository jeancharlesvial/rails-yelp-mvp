# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London',
    phone_number: '01-72-23-34-44',
    category:     'chinese'
  },
  {
    name:         'Le Montagnard',
    address:      '19 montée des russes, Courchevel',
    phone_number: '02-72-34-34-44',
    category:     'french'
  },
  {
    name:         'Napolito',
    address:      '28 rue de Rome, Lyon',
    phone_number: '03-72-23-34-44',
    category:     'italian'
  },
  {
    name:         'Sushigood',
    address:      '14 rue du Japon, Paris',
    phone_number: '04-72-23-34-44',
    category:     'japanese'
  },
  {
    name:         'Beurk',
    address:      '7 rue de Bruxelles, Lyon',
    phone_number: '05-72-23-34-44',
    category:     'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
