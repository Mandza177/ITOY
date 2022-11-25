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
faucon_millenium = Toy.new(title: "Faucon millennium", description: "You can build the ultimate Lego starWars. Include 2 menbers crew complete to revive all the adventure of Hann Solo. solar pannels are moveable to invite you to some actions. The details are everywhere and realistic", price: 150, city: "Nantes", user: pierre)
faucon_millenium.photo.attach(io: faucon_millenium_image, filename: "nes.png", content_type: "image/png")
faucon_millenium.save!

ferrari_image = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669135619/Capture_d_%C3%A9cran_389_v6rf09.png")
ferrari = Toy.new(title: "Ferrari Daytona SP3", description: "Build the brand new supercar from Ferrari. An immersive experience
  With 1,677 pieces, this rewarding project delivers hours of hands-on building with a beautiful collector’s model to cherish.This LEGO® Speed Champions Ferrari F8 Tributo (76895) is perfect for fans of toy cars and Ferrari! Racing enthusiasts of all ages will love to build this mini replica from LEGO bricks. They can create their very own super-fast F8 Tributo model car before displaying the sleek mini replica or challenging other cars to thrilling races. The most realistic Ferrari ever LEGO Speed Champions cars are now 25% bigger than ever before, meaning even more authentic details. This F8 Tributo toy model car has the same beautiful design as the original, which boasts the fastest V8 engine in Ferrari’s history. This red toy model car kit also comes with a Ferrari racing minifigure. Place him behind the wheel and away you go! Recreate all the drama of the racetrack! LEGO Speed Champions building kits for kids let car fans construct mini versions of some of the world’s most famous cars. They can then display the models, enjoy some independent play, or stage thrilling races against their friends.", price: 120, city: "Rennes", user: john)
ferrari.photo.attach(io: ferrari_image, filename: "nes.png", content_type: "image/png")
ferrari.save!

bugatti_chiron_image = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669135544/Capture_d_%C3%A9cran_376_we7t0q.png")
bugatti_chiron = Toy.new(title: "Bugatti Chiron", description: "Discover the ultimate french supercar. The LEGO Technic™ Bugatti Chiron features aerodynamic bodywork with an active rear wing, spoked rims with low-profile tyres and the legendary W16 engine with moving pistons. The set also features a speed key which enables you to switch the active rear wing from handling to top speed position.Explore engineering excellence with the LEGO® Technic™ 42083 Bugatti Chiron advanced building set. This exclusive model has been developed in partnership with Bugatti Automobiles S.A.S to capture the essence of the quintessential super sports car, and comes with gleaming aerodynamic bodywork, logoed spoked rims with low-profile tires, and detailed brake discs. The accessible cockpit features a Technic 8-speed gearbox with movable paddle gearshift and a steering wheel bearing the Bugatti emblem. Insert the top speed key and you can switch the active rear wing from handling to top speed position. The rear lid affords a glimpse of the detailed W16 engine with moving pistons, while beneath the hood you’ll discover a unique serial number and a compact storage compartment containing a stylish Bugatti overnight bag. This 1:8 scale model comes with a classic Bugatti duo-tone blue color scheme that reflects the brand's signature color, and a set of stickers for additional detailing. The set is delivered in luxurious box packaging and includes a color collector’s booklet with comprehensive building instructions.", price: 130, city: "Bordeaux", user: marc)
bugatti_chiron.photo.attach(io: bugatti_chiron_image, filename: "nes.png", content_type: "image/png")
bugatti_chiron.save!

taj_mahal_image = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669135535/Capture_d_%C3%A9cran_382_n3gipg.png")
taj_mahal = Toy.new(title: "The Taj Mahal. A Timeless Memorial!  Capture the beauty of this iconic structure. Features four facades with sweeping arches, balconies and arched windows. Ornate detailing and intricate tilework throughout.", description: "The Taj Mahal is a incredible monument", price: 100, city: "Reims", user: marc)
taj_mahal.photo.attach(io: taj_mahal_image, filename: "nes.png", content_type: "image/png")
taj_mahal.save!

the_titanic_image = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669135534/Capture_d_%C3%A9cran_362_fhglrf.png")
the_titanic = Toy.new(title: "The Titanic", description: "the longest Lego build; The LEGO Titanic is one of the longest and largest LEGO models to date, made up of 9,090 pieces, making it a truly immersive building challenge for LEGO fans and budding historians alike. As well as its sheer size, the Titanic was known for its unrivaled grandeur, which has been faithfully captured in the set.", price: 150, city: "Brest", user: john)
the_titanic.photo.attach(io: the_titanic_image, filename: "nes.png", content_type: "image/png")
the_titanic.save!

bonsai_image = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669135618/Capture_d_%C3%A9cran_384_sonvmp.png")
bonsai = Toy.new(title: "Bonsaï", description: "There's a small tree. The LEGO Bonsai Tree model comes with a rectangular pot and a slatted wood-effect LEGO stand, creating a pretty display piece to take pride of place in any home or office. Whether it's a birthday gift for a loved one or a treat for you, this set is sure to capture the imagination with its beauty.", price: 30, city: "La Rochelle", user: marc)
bonsai.photo.attach(io: bonsai_image, filename: "nes.png", content_type: "image/png")
bonsai.save!

the_poudlard_express_image = URI.open("https://res.cloudinary.com/df1pesufu/image/upload/v1669135541/Capture_d_%C3%A9cran_372_k9y4lr.png")
the_poudlard_express = Toy.new(title: "the Poudlard Express", description: "Get your ticket to Poudlard. Step aboard the iconic LEGO® Harry Potter™ 75955 Hogwarts™ Express train from King’s Cross Station, featuring a railway bridge with a clock and steps leading to Platform 9¾™, moving brick wall entrance, ‘Wanted’ poster and Daily Prophet newspapers, plus a train toy and carriage with 4 seats and removable side panel and roof. Order candy from the Trolley Witch, fly the Dementor™ into the carriage and recreate fantasy realm scenes from blockbuster Harry Potter™ movies. This great LEGO Harry Potter gift also includes 5 minifigures plus Dementor and Scabbers™ figures. ", price: 120, city: "Toulouse", user: pierre)
Pthe_poudlard_express.photo.attach(io: the_poudlard_express_image, filename: "nes.png", content_type: "image/png")
the_poudlard_express.save!

puts "creating toys done"

# Toy.new(title: "The starry night", description: "Create your Van Gogh", price: 90, city: "Nice")
# Toy.new(title: "Apollo Saturn V", description: "Your next fly to the moon", price: 50, city: "Orléans")
# Toy.new(title: "Razor Crest", description: "Who want to become the next Mandalorian?", price: 140, city: "Lyon")
# Toy.new(title: "AT-AT", description: "Killer Dog", price: 180, city: "Bordeaux")
# Toy.new(title: "R2-D2", description: "Your new Best-friend", price: 90, city: "Poitiers")
# Toy.new(title: "Imperial Star Destroyer", description: "Your uber's just arrived", price 200, city: "Alençon")


puts "creating rents"

Rent.create!(user: john, toy: faucon_millenium, start_date: "2022-11-25", end_date: "2022-11-26", total_price: 120, acceptation: "pending")
Rent.create!(user: pierre, toy: ferrari, start_date: "2022-11-28", end_date: "2022-11-29", total_price: 30, acceptation: "accepted")
Rent.create!(user: thomas, toy: bonsai, start_date: "2022-11-26", end_date: "2022-11-30", total_price: 150, acceptation: "rejected")
Rent.create!(user: marc, toy: the_poudlard_express, start_date: "2022-12-12", end_date: "2022-12-17", total_price: 200, acceptation: "pending")

puts "creating rents done"
