# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Airport.create([{ name: 'SFO' }, { name: 'NYC' }, { name: 'PDX' }, { name: 'BOS' }, { name: 'LAX' }])
Flight.create([
  {start_date: DateTime.new(2021, 8, 29,  0,  0,  0), 
  duration: 2, 
  from_airport_id: 22, 
  to_airport_id: 24}
  ])

