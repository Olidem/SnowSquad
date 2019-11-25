# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Clearing records"
Message.destroy_all
Membership.destroy_all
User.destroy_all
Group.destroy_all
Resort.destroy_all
Country.destroy_all

puts "Creating countries"
france = Country.new(
  name: "France",
  slope_length: 4242,
  cost: "€€€",
  continent: "Europe"
  )
france.save!


puts "Filling countries with resorts"
courchavel = Resort.new(
  name: "Courchavel",
  description: "Courchevel is a winter playground for the rich and famous – attracting a steady influx of stars from Beyonce to Beckham. Ironically, the resort was originally planned to create jobs and skiing for the masses, but somewhere along the lines it morphed into the luxury resort of The Alps.\nThere are 50 five-star hotels in the whole of France and nine of them are in Courchevel. As well as top hotels, the resort now boasts three Michelin-star restaurants. The multi-level resort, complete with heated pavements, is dotted with more than 100 boutiques - you’ll find as many diamond dealers here as ski-hire shops. The tourist board does stress they offer a range of amenities for a wider clientele; it’s not all Hermès, Louis Vuitton and Valentino.\nThe resort consists of four ski villages: Courchevel 1300 (La Praz), Courchevel 1550, Courchevel 1650 and Courchevel 1850. While 1850 has the most high-end hotels and shops, its modern development is decidedly lacking in charm. Fans of the traditional French feel should head to Courchevel 1650.\nCourchevel is a good all-round resort. Its ski area offers a good selection of runs for all levels and it is also popular with families, off-pisters and non-skiers. The resort’s 150 kilometres is enough for most, but the avid skier can buy a pass to the vast Three Valleys ski area, opening up 600 kilometres of lift-linked runs. Ski Pass for access to the vast lift-linked ski area in the world (600km).",
  address: "COURCHEVEL, BP 37, 73122 COURCHEVEL, France"
  )
courchavel.country = france
courchavel.save!


puts "Filling resorts with squads and users!"
group_names = [["Freestylers", "Hardcore freestylers get involved!"],
  ["Big birthday drinks", "Open to everyone! Come and join"],
  ["Off-piste buddies", "Looking for some squaddies to come off-piste for a few days!"]]
group_names.each do |group_name|
  group = Group.new(name: group_name[0], description: group_name[1])
  group.resort = courchavel
  group.save!

  user_infos = [["Rob", "Pickard", "rob@skisquad.com", "123456", URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574331235/bdLSqWADjpU2a5cT7vbDGKqn.jpg')],
    ["Ben", "Mclaren", "ben@skisquad.com", "123456", URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574332988/47673163_nfnpke.jpg')],
    ["Ross", "Bickmore", "ross@skisquad.com", "123456", URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574332864/T02NE0241-UNR7LT7EW-067763db4da5-512_b1ex8x.jpg')],
    ["Olivier", "Deman", "olivier@skisquad.com", "123456", URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574331786/CyY16fryq1JUFW1ewWzBxyDG.jpg')]]
  user_infos.each do |user_info|
    user = User.new(first_name: user_infos[0], last_name: user_infos[1], email: user_infos[2], password: user_infos[3])
    user.resort = courchavel
    user.photo.attach(io: user_infos[4], filename: "profile_picture_#{user_infos[0]}.jpg", content_type: 'image/jpg')
    user.save!

    membership = Membership.new(user: user, group: group)
    membership.save!
  end
end



