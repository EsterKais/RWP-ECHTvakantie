# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# test
vacation1 = Vacation.create(title: "leuke vakantie", description: Faker::Hipster.paragraph, address: "Bloemenmarkt 1")
vacation2 = Vacation.create(title: "gezellig", description: Faker::Hipster.paragraph, address: "Amsterdam")