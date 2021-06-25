# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Brewery.create(name: "ASB", city: "Monterey Bay", address: "1234 Alvarado St", food: true, twentyone: true, dog: true)

Beer.create(name: "Contains no Juice", brewery_id: 1,  alc: 7.5)

Member.create(name: "Luke", age: "24", favBeer: "IPA", bio: "I like good beer...")