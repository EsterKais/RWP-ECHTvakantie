# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Photos
vphoto1 = Vphoto.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007276/28dab8dd748210a53c77bb284558a5ce5905ca6a_git9a9.jpg")
vphoto2 = Vphoto.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007276/99ca8b27a84b46c373803df268167d15c3488e99_tvrfql.jpg")
vphoto3 = Vphoto.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007282/20161005-q3895_hjoc8t.png")

tphoto1 = Tphoto.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007284/20161005-60rbr_rp41qn.png")
tphoto2 = Tphoto.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007288/20161005-e8xxp_cap4y9.png")
tphoto3 = Tphoto.create(remote_image_url: "http://res.cloudinary.com/dnwkjak4p/image/upload/v1476007287/20161005-zsogv_l4urst.png")

# Themes
Theme.create(name: "Special", description: "nil", style: "nil", tphotos: [tphoto1])
Theme.create(name: "Luxury", description: "nil", style: "nil", tphotos: [tphoto2])
Theme.create(name: "Body & Mind", description: "nil", style: "nil", tphotos: [tphoto3])

#Vacations
Vacation.create(title: "Paris", country: "France", region: "nil", price: "nil", description: "nil", show: "true", vphotos: [vphoto1])
Vacation.create(title: "Berlin", country: "Germany", region: "nil", price: "nil", description: "nil", show: "true", vphotos: [vphoto2])
Vacation.create(title: "Amsterdam", country: "The Netherlands", region: "nil", price: "nil", description: "nil", show: "true", vphotos: [vphoto3])
