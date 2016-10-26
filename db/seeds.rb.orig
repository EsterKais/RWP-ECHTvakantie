# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Photos


Vphoto.delete_all
Tphoto.delete_all
Theme.delete_all
Vacation.delete_all

<<<<<<< HEAD
User.create(email: "test@test.nl", password: "test1234")

vphoto1 = Vphoto.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007276/28dab8dd748210a53c77bb284558a5ce5905ca6a_git9a9.jpg")
vphoto2 = Vphoto.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007276/99ca8b27a84b46c373803df268167d15c3488e99_tvrfql.jpg")
vphoto3 = Vphoto.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007282/20161005-q3895_hjoc8t.png")

tphoto1 = Tphoto.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007284/20161005-60rbr_rp41qn.png")
tphoto2 = Tphoto.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007288/20161005-e8xxp_cap4y9.png")
tphoto3 = Tphoto.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007287/20161005-zsogv_l4urst.png")

=======
>>>>>>> master
# Themes

tphoto1 = Tphoto.new(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007284/20161005-60rbr_rp41qn.png")
tphoto2 = Tphoto.new(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007288/20161005-e8xxp_cap4y9.png")
tphoto3 = Tphoto.new(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007287/20161005-zsogv_l4urst.png")

theme1 = Theme.new(name: "Special", description: "nil", style: "nil")
tphoto1.theme = theme1
theme1.tphotos << tphoto1
theme1.save!
theme2 = Theme.new(name: "Luxury", description: "nil", style: "nil")
tphoto2.theme = theme2
theme2.tphotos << tphoto2
theme2.save!
theme3 = Theme.new(name: "Body & Mind", description: "nil", style: "nil")
tphoto3.theme = theme3
theme3.tphotos << tphoto3
theme3.save!

#Vacations
<<<<<<< HEAD
Vacation.create(title: "Paris", address: "Benedelangs 35", country: "France", region: "nil", price: "nil", description: "nil", show: "true", vphotos: [vphoto1], themes: [theme1])
Vacation.create(title: "Spain", address: "Bloemenmarkt 2", country: "The Netherlands", region: "nil", price: "nil", description: "nil", show: "true", vphotos: [vphoto3], themes: [theme1])
Vacation.create(title: "Amsterdam", address: "Weesperplein", country: "The Netherlands", region: "nil", price: "nil", description: "nil", show: "true", vphotos: [vphoto3], themes: [theme1])
Vacation.create(title: "Nicaragua", address: "Nicaragua", country: "The Netherlands", region: "Hallo", price: "nil", description: "nil", show: "true", vphotos: [vphoto3], themes: [theme1])
Vacation.create(title: "Antarctica", address: "Flevoland", country: "The Netherlands", region: "Frankrijk", price: "nil", description: "nil", show: "true", vphotos: [vphoto3], themes: [theme1])

Vacation.create(title: "Berlin", address: "Andorra", country: "Germany", region: "Frankrijkafdasdghfgj", price: "nil", description: "nil", show: "true", vphotos: [vphoto2], themes: [theme2])
Vacation.create(title: "France", address: "Sweden", country: "The Netherlands", region: "Frankrijk", price: "nil", description: "nil", show: "true", vphotos: [vphoto3], themes: [theme3])


Vacation.create(title: "Paris", address: "Purmerend", country: "France", region: "Ardennen", price: "nil", description: "nil", show: "true", vphotos: [vphoto1], themes: [theme1])
Vacation.create(title: "Paris1", address: "Spui", country: "France", region: "Ardennen", price: "nil", description: "nil", show: "true", vphotos: [vphoto1], themes: [theme1])
Vacation.create(title: "Paris2", address: "Beethovenstraat", country: "France", region: "Ardennen", price: "nil", description: "nil", show: "true", vphotos: [vphoto1], themes: [theme1])
Vacation.create(title: "Paris3", address: "Cuijk", country: "France", region: "Ardennen", price: "nil", description: "nil", show: "true", vphotos: [vphoto1], themes: [theme1])
Vacation.create(title: "Paris4", address: "Scheveningen", country: "France", region: "Ardennen", price: "nil", description: "nil", show: "true", vphotos: [vphoto1], themes: [theme1])
=======
paris = Vacation.create!(title: "Paris", address: "Benedelangs 35", country: "France", region: "nil", price: "nil", description: "nil", show: "true", themes: [theme1])
spain = Vacation.create!(title: "Spain", address: "Bloemenmarkt 2", country: "The Netherlands", region: "nil", price: "nil", description: "nil", show: "true", themes: [theme1])
amsterdam = Vacation.create!(title: "Amsterdam", address: "Weesperplein", country: "The Netherlands", region: "nil", price: "nil", description: "nil", show: "true", themes: [theme1])
nicaragua = Vacation.create!(title: "Nicaragua", address: "Nicaragua", country: "The Netherlands", region: "nil", price: "nil", description: "nil", show: "true", themes: [theme1])
antarctica = Vacation.create!(title: "Antarctica", address: "Flevoland", country: "The Netherlands", region: "nil", price: "nil", description: "nil", show: "true", themes: [theme1])

berlin = Vacation.create!(title: "Berlin", address: "Andorra", country: "Germany", region: "nil", price: "nil", description: "nil", show: "true", themes: [theme2])
france = Vacation.create!(title: "France", address: "Sweden", country: "The Netherlands", region: "nil", price: "nil", description: "nil", show: "true", themes: [theme3])

Vphoto.create!(vacation: berlin, remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007276/99ca8b27a84b46c373803df268167d15c3488e99_tvrfql.jpg")
Vphoto.create!(vacation: paris, remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007282/20161005-q3895_hjoc8t.png")
Vphoto.create!(vacation: spain, remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007282/20161005-q3895_hjoc8t.png")
Vphoto.create!(vacation: nicaragua, remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007282/20161005-q3895_hjoc8t.png")
Vphoto.create!(vacation: amsterdam, remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007282/20161005-q3895_hjoc8t.png")
Vphoto.create!(vacation: antarctica, remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007282/20161005-q3895_hjoc8t.png")
>>>>>>> master
