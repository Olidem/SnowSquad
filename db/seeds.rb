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
MembershipRequest.destroy_all
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
img = URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574756912/limitless_choice_runs_chamonix_france_2_96985_gp3cnb.jpg')
france.photo.attach(io: img, filename: "france.jpg", content_type: 'image/jpg')
france.save!

austria = Country.new(
  name: "Austria",
  slope_length: 6000,
  cost: "€€",
  continent: "Europe"
  )
img = URI.open('https://images.unsplash.com/photo-1489664502447-9dac37a6ad5c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80')
austria.photo.attach(io: img, filename: "austria.jpg", content_type: 'image/jpg')
austria.save!

switzerland = Country.new(
  name: "Switzerland",
  slope_length: 6487,
  cost: "€€",
  continent: "Europe"
  )
img = URI.open('https://images.unsplash.com/photo-1552355170-c8337700279c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80')
switzerland.photo.attach(io: img, filename: "switzerland.jpg", content_type: 'image/jpg')
switzerland.save!

italy = Country.new(
  name: "Italy",
  slope_length: 3232,
  cost: "€€€",
  continent: "Europe"
  )
img = URI.open('https://images.unsplash.com/photo-1491403865995-cda9c458c314?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1818&q=80')
italy.photo.attach(io: img, filename: "italy.jpg", content_type: 'image/jpg')
italy.save!

united_states = Country.new(
  name: "United States",
  slope_length: 3231,
  cost: "€€",
  continent: "North America"
  )
img = URI.open('https://images.unsplash.com/photo-1485594050903-8e8ee7b071a8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=80')
united_states.photo.attach(io: img, filename: "usa.jpg", content_type: 'image/jpg')
united_states.save!

canada = Country.new(
  name: "Canada",
  slope_length: 7231,
  cost: "€€",
  continent: "North America"
  )
img = URI.open('https://images.unsplash.com/photo-1453694595360-51e193e121fc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1332&q=80')
canada.photo.attach(io: img, filename: "canada.jpg", content_type: 'image/jpg')
canada.save!

greenland = Country.new(
  name: "Canada",
  slope_length: 1231,
  cost: "€€",
  continent: "North America"
  )
img = URI.open('https://images.unsplash.com/photo-1470520518831-10005602ab67?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2500&q=80')
greenland.photo.attach(io: img, filename: "greenland.jpg", content_type: 'image/jpg')
greenland.save!

new_zealand = Country.new(
  name: "New Zealand",
  slope_length: 1231,
  cost: "€€",
  continent: "Rest of the World"
  )
img = URI.open('https://images.unsplash.com/photo-1452460108763-293ffa5e4ede?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2612&q=80')
new_zealand.photo.attach(io: img, filename: "nz.jpg", content_type: 'image/jpg')
new_zealand.save!

japan = Country.new(
  name: "Japan",
  slope_length: 12231,
  cost: "€€",
  continent: "Rest of the World"
  )
img = URI.open('https://images.unsplash.com/photo-1512926121941-82b4da1b0abf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1789&q=80')
japan.photo.attach(io: img, filename: "japan.jpg", content_type: 'image/jpg')
japan.save!

australia = Country.new(
  name: "Australia",
  slope_length: 7231,
  cost: "€€",
  continent: "Rest of the World"
  )
img = URI.open('https://images.unsplash.com/photo-1507726420169-08dc80118357?ixlib=rb-1.2.1&auto=format&fit=crop&w=1787&q=80')
australia.photo.attach(io: img, filename: "austrlia.jpg", content_type: 'image/jpg')
australia.save!


puts "Creating resorts"
courchavel = Resort.new(
  name: "Courchevel",
  description: "Courchevel is a winter playground for the rich and famous – attracting a steady influx of stars from Beyonce to Beckham. Ironically, the resort was originally planned to create jobs and skiing for the masses, but somewhere along the lines it morphed into the luxury resort of The Alps.<br/><br/>There are 50 five-star hotels in the whole of France and nine of them are in Courchevel. As well as top hotels, the resort now boasts three Michelin-star restaurants. The multi-level resort, complete with heated pavements, is dotted with more than 100 boutiques - you’ll find as many diamond dealers here as ski-hire shops. The tourist board does stress they offer a range of amenities for a wider clientele; it’s not all Hermès, Louis Vuitton and Valentino.<br/><br/>Courchevel is a good all-round resort. Its ski area offers a good selection of runs for all levels and it is also popular with families, off-pisters and non-skiers. The resort’s 150 kilometres is enough for most, but the avid skier can buy a pass to the vast Three Valleys ski area, opening up 600 kilometres of lift-linked runs. Ski Pass for access to the vast lift-linked ski area in the world (600km).",
  address: "73120 Saint-Bon-Tarentaise, France",
  website_url: "https://www.courchevel.com"
  )
courchavel.country = france
img = URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574756989/courchevel-1850-cropped_lilh4q.png')
courchavel.photo.attach(io: img, filename: "courchavel.jpg", content_type: 'image/jpg')
courchavel.save!

vdi = Resort.new(
  name: "Val d'Isère",
  description: "This world-class resort has earned its reputation as one of France’s top ski destinations. Val d’Isère has something for skiers and boarders of all levels: Olympic and World Cup runs, a wealth of fantastic off-piste opportunities and a varied selection of pistes including greens high up on the mountain.<br/><br/>The base of Val d'Isère sits at 1850 metres and from there, the pistes climb up to 3488 metres, at the Pointe du Montet and the Pissaillas glacier, just below at 3450 metres. Skiers have a choice of 150 kilometres of pistes for all levels, serviced by 90 lifts.<br/><br/>Val d'Isere is part of the Espace Killy ski area, shared with Tignes. Some of the world's best skiers leave their tracks here and the resort has hosted Olympic and World Cup downhill competitions, as well as the Alpine Ski World Championships.",
  address: "Place du Rond Point des Pistes, 73150 Val-d'Isère, France",
  website_url: "https://www.valdisere.com/en"
  )
vdi.country = france
img = URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574757114/1500026649-0fe5988257cc2eebde3a9c9f321d8afa-787x564_okwo71.jpg')
vdi.photo.attach(io: img, filename: "vdi.jpg", content_type: 'image/jpg')
vdi.save!

tignes = Resort.new(
  name: "Tignes",
  description: "At Tignes, you can ski before and after everyone else. That’s the motto of this large resort, which offers summer glacier skiing and a winter season stretching from September to May. With 150 kilometres of runs and such a long season, Tignes really does have something for everyone, but intermediate and advanced skiers are especially served. Freestylers and riders will also feel at home, since Tignes was one of France’s first resorts to promote alternative ski culture and continues to welcome it with open arms.",
  address: "73320 Tignes, France",
  website_url: "https://en.tignes.net"
  )
tignes.country = france
img = URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574757054/540px-Tignes-winter_f4sk2f.jpg')
tignes.photo.attach(io: img, filename: "tignes.jpg", content_type: 'image/jpg')
tignes.save!

# new

chamonix = Resort.new(
  name: "Chamonix",
  description: "Chamonix-Mont-Blanc (usually shortened to Chamonix) is a resort area near the junction of France, Switzerland and Italy. At the base of Mont Blanc, the highest summit in the Alps, it's renowned for its skiing. Year-round, cable cars take visitors up to several nearby peaks with panoramic views, including Aiguille du Midi above town, and Pointe Helbronner, across vast glacier fields on the Italian border.
The slopes surrounding Chamonix have many kilometres of ski and snowboard trails, including the legendary 17km off-piste (backcountry) descent of La Vallée Blanche. The funicular Montenvers train connects Chamonix to the 7km-long Mer de Glace glacier and a cave with ice sculptures carved out beneath it. Chamonix’s bars and restaurants host a lively après-ski party scene. In summer, paragliders take flight from Plan de l’Aiguille and mountaineers tackle the 4208m-high Grandes Jorasses. Chamonix is also a base for trekking the alpine trails that connect Chamonix to Switzerland and Italy.",
  address: "74400 Chamonix, France",
  website_url: "www.chamonix.com"
  )
chamonix.country = france
img = URI.open('https://images.unsplash.com/photo-1469395269491-9fb763725eb0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1506&q=80')
chamonix.photo.attach(io: img, filename: "chamonix.jpg", content_type: 'image/jpg')
chamonix.save!

megeve = Resort.new(
  name: "Megève",
  description: "Megève is a ski resort village in the Alps of southeastern France, in the Mont Blanc massif. It offers downhill runs, snow parks and cross-country trails, with links to La Giettaz. The area features rustic-chic chalets, upmarket hotels and designer boutiques. Its pedestrian center has cobbled medieval streets. In summer, trails lead through green forests and meadows, and up to Mont d’Arbois for panoramic views.",
  address: "74120 Megève, France",
  website_url: "https://megeve.com"
  )
megeve.country = france
img = URI.open('https://images.unsplash.com/photo-1543937879-18a2963bdb69?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1510&q=80')
megeve.photo.attach(io: img, filename: "megeve.jpg", content_type: 'image/jpg')
megeve.save!

huez = Resort.new(
  name: "Huez",
  description: "Huez is a commune in the Isère department in southeastern France. The mountain resort Alpe d'Huez is located in the commune. L'Alpe d'Huez is often an ascent on the Tour de France.",
  address: "38750 Huez, France",
  website_url: "https://www.alpedhuez.com/"
  )
huez.country = france
img = URI.open('https://images.unsplash.com/photo-1459196305771-53130577277a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80')
huez.photo.attach(io: img, filename: "huez.jpg", content_type: 'image/jpg')
huez.save!

avoriaz = Resort.new(
  name: "Avoriaz",
  description: "Avoriaz is a French mountain resort in the heart of the Portes du Soleil. It is located in the territory of the commune of Morzine. It is easily accessible from either Thonon at Lake Geneva or Cluses-junction on the A40 motorway between Geneva and Chamonix.",
  address: "74110 Morzine, France",
  website_url: "avoriaz.com/"
  )
avoriaz.country = france
img = URI.open('https://images.unsplash.com/photo-1553715339-04018049600f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1334&q=80')
avoriaz.photo.attach(io: img, filename: "avoriaz.jpg", content_type: 'image/jpg')
avoriaz.save!


resorts = [courchavel, vdi, tignes, chamonix, megeve, huez, avoriaz]

puts "Creating users"
users = []
user_infos = [["Rob", "Pickard", "rob@snowsquad.com", "123456", URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574331235/bdLSqWADjpU2a5cT7vbDGKqn.jpg')],
              ["Ben", "Mclaren", "ben@snowsquad.com", "123456", URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574332988/47673163_nfnpke.jpg')],
              ["Ross", "Bickmore", "ross@snowsquad.com", "123456", URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574332864/T02NE0241-UNR7LT7EW-067763db4da5-512_b1ex8x.jpg')],
              ["Olivier", "Deman", "olivier@snowsquad.com", "123456", URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574331786/CyY16fryq1JUFW1ewWzBxyDG.jpg')]]

user_infos.each do |user_info|
  user = User.new(first_name: user_info[0], last_name: user_info[1], email: user_info[2], password: user_info[3])
  user.resort = courchavel
  user.photo.attach(io: user_info[4], filename: "profile_picture_#{user_info[0]}.jpg", content_type: 'image/jpg')
  user.save!
  users << user
end


puts "Filling resorts with squads and users"
group_names = [["Freestylers", "Hardcore freestylers get involved!", true],
  ["Big birthday drinks", "Open to everyone! Come and join"],
  ["Snow Patrol concert, free entry!", "I'm running out of ideas"],
  ["Off-piste buddies", "Looking for some squaddies to come off-piste for a few days!", true],
  ["Girls skiing trip", "Join some friendly girls skiing for the week", true]]
resorts.each do |resort|
    group_names.each_with_index do |group_name, i|
      photos = [URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574758421/photo-1523815119304-615b6b81e704_ojsuvh.jpg'), URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574758435/photo-1558301211-0d8c8ddee6ec_q8jhvq.jpg'), URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574789951/132546-top-of-the-mountain-concert-c-tvb-paznaun---ischgl_n1ocpn.webp'), URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574758427/photo-1563544769932-7a686e8c1f40_acgdlv.jpg'), URI.open('https://res.cloudinary.com/dr48k5zwm/image/upload/v1574789983/Girls-Ski-6-1024x666_hchpws.jpg')]
      group = Group.new(name: group_name[0], description: group_name[1], locked: group_name[2])
      group.resort = resort
      group.photo.attach(io: photos[i], filename: "group_picture_#{group_name[0]}.jpg", content_type: 'image/jpg')
      group.save!
        users.each do |user|
          membership = Membership.new(user: user, group: group, admin: true)
          membership.save!
        end
    end
end




puts "Setting base urls"
resort_urls_france = ["https://www.onthesnow.co.uk/northern-alps/val-disere/",
  "https://www.onthesnow.co.uk/northern-alps/morzine/",
  "https://www.onthesnow.co.uk/northern-alps/meribel/",
  "https://www.onthesnow.co.uk/northern-alps/chamonix-mont-blanc/",
  "https://www.onthesnow.co.uk/northern-alps/les-menuires/",
  "https://www.onthesnow.co.uk/northern-alps/les-karellis/",
  "https://www.onthesnow.co.uk/northern-alps/chatel/",
  "https://www.onthesnow.co.uk/northern-alps/avoriaz/",
  "https://www.onthesnow.co.uk/northern-alps/les-2-alpes/",
  "https://www.onthesnow.co.uk/northern-alps/les-arcs-bourg-st-maurice/",
  "https://www.onthesnow.co.uk/southern-alps/vars/",
  "https://www.onthesnow.co.uk/northern-alps/courchevel/",
  "https://www.onthesnow.co.uk/northern-alps/alpe-dhuez/",
  "https://www.onthesnow.co.uk/northern-alps/tignes/",
  "https://www.onthesnow.co.uk/northern-alps/megeve/"]
resorts_url_italy = ["https://www.onthesnow.co.uk/aosta-valley/courmayeur/",
  "https://www.onthesnow.co.uk/trentino/folgarida-marilleva/",
  "https://www.onthesnow.co.uk/trentino/andalo-fai-della-paganella/",
  "https://www.onthesnow.co.uk/veneto/arabba-marmolada/",
  "https://www.onthesnow.co.uk/trentino/pontedilegno-tonale-adamello-ski/",
  "https://www.onthesnow.co.uk/suedtirol/solda-sulden/",
  "https://www.onthesnow.co.uk/suedtirol/val-gardena/",
  "https://www.onthesnow.co.uk/suedtirol/plan-de-corones-kronplatz/",
  "https://www.onthesnow.co.uk/trentino/madonna-di-campiglio/",
  "https://www.onthesnow.co.uk/veneto/cortina-dampezzo/",
  "https://www.onthesnow.co.uk/lombardia/livigno/",
  "https://www.onthesnow.co.uk/aosta-valley/champoluc-monterosa-ski/",
  "https://www.onthesnow.co.uk/suedtirol/alta-badia/",
  "https://www.onthesnow.co.uk/aosta-valley/cervinia-breuil/",
  "https://www.onthesnow.co.uk/trentino/canazei-belvedere/"]
resorts_url_austria = ["https://www.onthesnow.co.uk/tyrol/soelden/",
  "https://www.onthesnow.co.uk/vorarlberg/lech-zuers-am-arlberg/",
  "https://www.onthesnow.co.uk/tyrol/ischgl/",
  "https://www.onthesnow.co.uk/tyrol/kitzbuehel/",
  "https://www.onthesnow.co.uk/tyrol/st-anton-am-arlberg/"]
resorts_url_switzerland = ["https://www.onthesnow.co.uk/graubunden/st-moritz-corviglia/",
  "https://www.onthesnow.co.uk/valais/zermatt/",
  "https://www.onthesnow.co.uk/graubunden/davos-klosters/",
  "https://www.onthesnow.co.uk/bernese-oberland/grindelwald-wengen/",
  "https://www.onthesnow.co.uk/graubunden/arosa/"]
resorts_url_usa = ["https://www.onthesnow.co.uk/michigan/ski-brule/",
  "https://www.onthesnow.co.uk/colorado/aspen-snowmass/",
  "https://www.onthesnow.co.uk/colorado/telluride/",
  "https://www.onthesnow.co.uk/utah/deer-valley-resort/",
  "https://www.onthesnow.co.uk/colorado/keystone/",
  "https://www.onthesnow.co.uk/wyoming/jackson-hole/",
  "https://www.onthesnow.co.uk/utah/snowbird/",
  "https://www.onthesnow.co.uk/colorado/steamboat/",
  "https://www.onthesnow.co.uk/new-mexico/taos-ski-valley/",
  "https://www.onthesnow.co.uk/colorado/beaver-creek/"]
resorts_url_new_zealand = ["https://www.onthesnow.co.uk/new-zealand/cardrona-alpine-resort/",
  "https://www.onthesnow.co.uk/new-zealand/turoa/",
  "https://www.onthesnow.co.uk/new-zealand/rainbow-ski-area/",
  "https://www.onthesnow.co.uk/new-zealand/the-remarkables/",
  "https://www.onthesnow.co.uk/new-zealand/broken-river-ski-area/"]

countries = []
countries_info = [resort_urls_france, resorts_url_italy, resorts_url_austria, resorts_url_switzerland, resorts_url_usa, resorts_url_new_zealand]

puts "Creating resorts"






















