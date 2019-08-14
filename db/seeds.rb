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
    address:      '7 Boundary St, London E2 7JE',
    phone_number:  '345678',
    category:        "italian",
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number:  '34567890',
    category:        "chinese",
  },
  {
    name:         'Gummy Bears',
    address:      '7 Boundary St, Milan E2 7JE',
    phone_number:  '34567890°',
    category:        "japanese",
  },
  {
    name:         'Salted Caramel',
    address:      '8 Boundary St, London E2 7JE',
    phone_number:  '567890',
    category:        "belgian",
  },
  {
    name:         'Cookies and co',
    address:      '7 Boundary Road, London E2 7JE',
    phone_number:  '0987654',
    category:        "french",
  },
  {
    name:         'Cake pop',
    address:      '6 Queen St, London E2 7JE',
    phone_number:  '98456900',
    category:        "french",
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
