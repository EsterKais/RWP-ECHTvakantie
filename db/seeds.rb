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

# Themes Photos
tphoto1 = Tphoto.new(remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477555974/EchtVakantie/Special___treehouse.jpg")
tphoto2 = Tphoto.new(remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477555977/EchtVakantie/Nature.jpg")
tphoto3 = Tphoto.new(remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477555972/EchtVakantie/Camping.jpg")

# Themes
theme1 = Theme.new(name: "Sleep in Trees", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", style: "nil")
tphoto1.theme = theme1
theme1.tphotos << tphoto1
theme1.save!
theme2 = Theme.new(name: "Nature", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", style: "nil")
tphoto2.theme = theme2
theme2.tphotos << tphoto2
theme2.save!
theme3 = Theme.new(name: "Camping", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", style: "nil")
tphoto3.theme = theme3
theme3.tphotos << tphoto3
theme3.save!

#Vacations



#for Theme Nature
slapenBos = Vacation.create!(title: "Slapen in het Bos", address: "Benedelangs 35", country: "The Netherlands", region: "Central Holland", price: "EchtDuur", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", show: "true", themes: [theme2])
hihahut = Vacation.create!(title: "Hihahut", address: "Benedelangs 35", country: "The Netherlands", region: "Whole Netherlands", price: "EchtNormaal", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", show: "true", themes: [theme2])
ecolodge = Vacation.create!(title: "Ecolodge", address: "Benedelangs 35", country: "The Netherlands", region: "South Holland", price: "EchtNormaal", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", show: "true", themes: [theme2])
beekhuizen = Vacation.create!(title: "Buitenplaats Beekhuizen", address: "Benedelangs 35", country: "The Netherlands", region: "North Holland", price: "EchtGoedkoop", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", show: "true", themes: [theme2])
boisBrule = Vacation.create!(title: "Bois Brule", address: "Benedelangs 35", country: "Belgium", region: "South East Belgium", price: "EchtNormaal", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", show: "true", themes: [theme2])

# for Theme SleepInTrees
treehotel = Vacation.create!(title: "Treehotel", address: "Benedelangs 35", country: "Sweden", region: "North Sweden", price: "EchtNormaal", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", show: "true", themes: [theme1])
treeInn = Vacation.create!(title: "Tree Inn", address: "Benedelangs 35", country: "Germany", region: "North Germany", price: "EchtGoedkoop", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", show: "true", themes: [theme1])
boomhut = Vacation.create!(title: "Boomhut", address: "Benedelangs 35", country: "The Netherlands", region: "North Holland", price: "EchtNormaal", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", show: "true", themes: [theme1])
vogel = Vacation.create!(title: "De Vreemde Vogel", address: "Benedelangs 35", country: "The Netherlands", region: "South Holland", price: "EchtNormaal", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", show: "true", themes: [theme1])

# for Theme Camping
simplyCanvas = Vacation.create!(title: "Simply Canvas", address: "Benedelangs 35", country: "France", region: "South France", price: "EchtNormaal", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", show: "true", themes: [theme3])
verborgen = Vacation.create!(title: "Verborgen Verblijf", address: "Benedelangs 35", country: "The Netherlands", region: "North Holland", price: "EchtGoedkoop", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", show: "true", themes: [theme3])
lesOrmes = Vacation.create!(title: "Camping Les Ormes", address: "Benedelangs 35", country: "France", region: "South France", price: "EchtGoedkoop", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", show: "true", themes: [theme3])
daniel = Vacation.create!(title: "Daniel - Smart Luxury", address: "Benedelangs 35", country: "Austria", region: "Vienna", price: "EchtDuur", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", show: "true", themes: [theme3])
silver = Vacation.create!(title: "Camp Silver", address: "Benedelangs 35", country: "The Netherlands", region: "North Holland", price: "EchtGoedkoop", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", show: "true", themes: [theme3])



# OLD THEMES JUST IN CASE
# spain = Vacation.create!(title: "Spain", address: "Bloemenmarkt 2", country: "The Netherlands", region: "nil", price: "nil", description: "nil", show: "true", themes: [theme1])
# amsterdam = Vacation.create!(title: "Amsterdam", address: "Weesperplein", country: "The Netherlands", region: "nil", price: "nil", description: "nil", show: "true", themes: [theme1])
# nicaragua = Vacation.create!(title: "Nicaragua", address: "Nicaragua", country: "The Netherlands", region: "nil", price: "nil", description: "nil", show: "true", themes: [theme1])
# antarctica = Vacation.create!(title: "Antarctica", address: "Flevoland", country: "The Netherlands", region: "nil", price: "nil", description: "nil", show: "true", themes: [theme1])
# berlin = Vacation.create!(title: "Berlin", address: "Andorra", country: "Germany", region: "nil", price: "nil", description: "nil", show: "true", themes: [theme2])
# france = Vacation.create!(title: "France", address: "Sweden", country: "The Netherlands", region: "nil", price: "nil", description: "nil", show: "true", themes: [theme3])

# Photos for Vacations
Vphoto.create!(vacation: slapenBos, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556089/EchtVakantie/Nature_-_SlapenInHetBos_-_1.jpg")
Vphoto.create!(vacation: slapenBos, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556089/EchtVakantie/Nature_-_SlapenInHetBos_-_2.jpg")
Vphoto.create!(vacation: slapenBos, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556089/EchtVakantie/Nature_-_SlapenInHetBos_-_3.jpg")

Vphoto.create!(vacation: hihahut, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556088/EchtVakantie/Nature_-_Hihahut_-_1.jpg")
Vphoto.create!(vacation: hihahut, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556088/EchtVakantie/Nature_-_Hihahut_-_2.jpg")
Vphoto.create!(vacation: hihahut, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556088/EchtVakantie/Nature_-_Hihahut_-_3.jpg")

Vphoto.create!(vacation: ecolodge, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556086/EchtVakantie/Nature_-_EchoLodge_-_1.jpg")
Vphoto.create!(vacation: ecolodge, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556086/EchtVakantie/Nature_-_Echolodge_-_2.jpg")
Vphoto.create!(vacation: ecolodge, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556086/EchtVakantie/Nature_-_Ecolodge_-_3.jpg")

Vphoto.create!(vacation: beekhuizen, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556086/EchtVakantie/Nature_-_BuitenPlaats_-_1.jpg")
Vphoto.create!(vacation: beekhuizen, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556086/EchtVakantie/Nature_-_BuitenPlaats_-_2.jpg")
Vphoto.create!(vacation: beekhuizen, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556086/EchtVakantie/Nature_-_BuitenPlaats_-_3.jpg")

Vphoto.create!(vacation: boisBrule, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556084/EchtVakantie/Nature_-_BoisBrule_-_1.jpg")
Vphoto.create!(vacation: boisBrule, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556085/EchtVakantie/Nature_-_BousBrule_-_2.jpg")
Vphoto.create!(vacation: boisBrule, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556085/EchtVakantie/Nature_-_BoisBrule_-_3.jpg")


Vphoto.create!(vacation: treehotel, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556089/EchtVakantie/SleepInTrees_-_TreeHotel_-_1.jpg")
Vphoto.create!(vacation: treehotel, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556089/EchtVakantie/SleepInTrees_-_TreeHotel_-_2.jpg")
Vphoto.create!(vacation: treehotel, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556089/EchtVakantie/SleepInTrees_-_TreeHotel_-_3.jpg")


Vphoto.create!(vacation: treeInn, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556090/EchtVakantie/SleepInTrees_-_TreeInn_-_1.jpg")
Vphoto.create!(vacation: treeInn, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556090/EchtVakantie/SleepInTrees_-_TreeInn_-_2.jpg")
Vphoto.create!(vacation: treeInn, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556090/EchtVakantie/SleepInTrees_-_TreeInn_-_3.jpg")

Vphoto.create!(vacation: boomhut, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556088/EchtVakantie/SleepInTrees_-_Boomhut_-_1.jpg")
Vphoto.create!(vacation: boomhut, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556088/EchtVakantie/SleepInTrees_-_Boomhut_-_2.jpg")
Vphoto.create!(vacation: boomhut, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556088/EchtVakantie/SleepInTrees_-_Boomhut_-_3.jpg")


Vphoto.create!(vacation: vogel, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556090/EchtVakantie/SleepInTrees_-_VreemdeVogel_-_1.jpg")
Vphoto.create!(vacation: vogel, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556090/EchtVakantie/SleepInTrees_-_VreemdeVogel_-_2.jpg")
Vphoto.create!(vacation: vogel, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556090/EchtVakantie/SleepInTrees_-_VreemdeVogel_-_3.jpg")

Vphoto.create!(vacation: simplyCanvas, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556084/EchtVakantie/Camping_-_Simply_Canvas_-_1.jpg")
Vphoto.create!(vacation: simplyCanvas, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556084/EchtVakantie/Camping_-_Simply_Canvas_-_2.jpg")
Vphoto.create!(vacation: simplyCanvas, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556084/EchtVakantie/Camping_-_Simply_Canvas.jpg")

Vphoto.create!(vacation: verborgen, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556085/EchtVakantie/Camping_-_Verborgen_-_1.jpg")
Vphoto.create!(vacation: verborgen, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556085/EchtVakantie/Camping_-_Verborgen_-_2.jpg")
Vphoto.create!(vacation: verborgen, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556085/EchtVakantie/Camping_-_Verborgen_-_3.jpg")

Vphoto.create!(vacation: lesOrmes, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556083/EchtVakantie/Camping_-_LesOrmes_-_1.jpg")
Vphoto.create!(vacation: lesOrmes, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556083/EchtVakantie/Camping_-_LesOrmes_-_2.jpg")
Vphoto.create!(vacation: lesOrmes, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556083/EchtVakantie/Camping_-_LesOrmes_-_3.jpg")

Vphoto.create!(vacation: daniel, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556083/EchtVakantie/Camping_-_Daniel_-_1.jpg")
Vphoto.create!(vacation: daniel, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556083/EchtVakantie/Camping_-_Daniel_-_2.jpg")
Vphoto.create!(vacation: daniel, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477556083/EchtVakantie/Camping_-_Daniel_-_3.jpg")

Vphoto.create!(vacation: silver, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477558630/EchtVakantie/Camping_-_Silver_-_1.jpg")
Vphoto.create!(vacation: silver, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477558630/EchtVakantie/Camping_-_Silver_-_2.jpg")
Vphoto.create!(vacation: silver, remote_image_url: "http://res.cloudinary.com/dfc7k24vb/image/upload/v1477558630/EchtVakantie/Camping_-_Silver_-_3.jpg")

