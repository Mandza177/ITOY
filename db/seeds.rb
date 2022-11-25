# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.destroy_all

puts "creating user"

pierre = User.create!(name: "Pierre", email: "pierregigolo@gmail.com", password: "biloute")
john = User.create!(name: "John", email: "john@gmail.com", password: "biloute")
thomas = User.create!(name: "Thomas", email: "thomas@gmail.com", password: "biloute")
marc = User.create!(name: "Marc", email: "marc@gmail.com", password: "biloute")

puts "creating user done"

puts "creating toys"

faucon_millenium_image = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669135612/Capture_d_%C3%A9cran_364_ebpb10.png")
faucon_millenium = Toy.new(title: "Faucon millennium", description: "You can build the ultimate Lego starWars", price: 150, city: "Nantes", user: pierre)
faucon_millenium.photo.attach(io: faucon_millenium_image, filename: "nes.png", content_type: "image/png")
faucon_millenium.save!

ferrari_image = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669135619/Capture_d_%C3%A9cran_389_v6rf09.png")
ferrari = Toy.new(title: "Ferrari Daytona SP3", description: "Build the brand new supercar from Ferrari", price: 120, city: "Rennes", user: john)
ferrari.photo.attach(io: ferrari_image, filename: "nes.png", content_type: "image/png")
ferrari.save!

bugatti_chiron_image = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669135544/Capture_d_%C3%A9cran_376_we7t0q.png")
bugatti_chiron = Toy.new(title: "Bugatti Chiron", description: "Discover the ultimate french supercar", price: 130, city: "Bordeaux", user: marc)
bugatti_chiron.photo.attach(io: bugatti_chiron_image, filename: "nes.png", content_type: "image/png")
bugatti_chiron.save!

eiffel_tower_image = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669135613/Capture_d_%C3%A9cran_368_oqfcgj.png")
eiffel_tower = Toy.new(title: "Eiffel Tower", description: "Build the biggest Lego ever made", price: 100, city: "Paris", user: pierre)
eiffel_tower.photo.attach(io: eiffel_tower_image, filename: "nes.png", content_type: "image/png")
eiffel_tower.save!

taj_mahal_image = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669135535/Capture_d_%C3%A9cran_382_n3gipg.png")
taj_mahal = Toy.new(title: "The Taj Mahal", description: "The Taj Mahal is a incredible monument", price: 100, city: "Reims", user: pierre)
taj_mahal.photo.attach(io: taj_mahal_image, filename: "nes.png", content_type: "image/png")
taj_mahal.save!

the_titanic_image = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669135534/Capture_d_%C3%A9cran_362_fhglrf.png")
the_titanic = Toy.new(title: "The Titanic", description: "the longest Lego build", price: 150, city: "Brest", user: john)
the_titanic.photo.attach(io: the_titanic_image, filename: "nes.png", content_type: "image/png")
the_titanic.save!

bonsai_image = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669135618/Capture_d_%C3%A9cran_384_sonvmp.png")
bonsai = Toy.new(title: "Bonsaï", description: "There's a small tree", price: 30, city: "La Rochelle", user: marc)
bonsai.photo.attach(io: bonsai_image, filename: "nes.png", content_type: "image/png")
bonsai.save!

the_poudlard_express_image = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669135541/Capture_d_%C3%A9cran_372_k9y4lr.png")
the_poudlard_express = Toy.new(title: "the Poudlard Express", description: "Get your ticket to Poudlard", price: 120, city: "Toulouse", user: pierre)
the_poudlard_express.photo.attach(io: the_poudlard_express_image, filename: "nes.png", content_type: "image/png")
the_poudlard_express.save!

puts "creating toys done"

# Toy.new(title: "The starry night", description: "Create your Van Gogh", price: 90, city: "Nice")
# Toy.new(title: "Apollo Saturn V", description: "Your next fly to the moon", price: 50, city: "Orléans")
# Toy.new(title: "Razor Crest", description: "Who want to become the next Mandalorian?", price: 140, city: "Lyon")
# Toy.new(title: "AT-AT", description: "Killer Dog", price: 180, city: "Bordeaux")
# Toy.new(title: "R2-D2", description: "Your new Best-friend", price: 90, city: "Poitiers")
# Toy.new(title: "Imperial Star Destroyer", description: "Your uber's just arrived", price 200, city: "Alençon")
