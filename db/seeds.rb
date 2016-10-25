# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# PIM added this for testing
theme1 = Theme.create(name: "Theme1")
theme2 = Theme.create(name: "Theme2")
theme3 = Theme.create(name: "Theme3")
theme4 = Theme.create(name: "Theme4")
theme5 = Theme.create(name: "Theme5")
theme6 = Theme.create(name: "Theme6")
theme7 = Theme.create(name: "Theme7")



# PIM added this for testing
vacation1 = Vacation.create(title: "leuke vakantie", description: Faker::Hipster.paragraph, address: "Bloemenmarkt 1")
vacation2 = Vacation.create(title: "gezellig", description: Faker::Hipster.paragraph, address: "Amsterdam")
