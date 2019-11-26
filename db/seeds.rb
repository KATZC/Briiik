require 'faker'
require 'open-uri'

User.destroy_all
puts 'Cleaning database...'

# file_joe_dalton = URI.open('./app/assets/images/joe_dalton.jpg')
joe_dalton = User.new(
    name:    "Joe Dalton",
    email: "joe@dalton.com",
    phone_number: "O612345678",
    password: "123456"
  )
  # joe_dalton.photo.attach(io: file_joe_dalton, filename: 'some-image.jpg', content_type: 'image/jpg')
  joe_dalton.save!

# file_alfred_dalton = URI.open('./app/assets/images/joe_dalton.jpg')
alfred_dalton = User.new(
    name:    "Alfred Dalton",
    email: "alfred@dalton.com",
    phone_number: "O612345679",
    password: "123456"
  )
  # alfred_dalton.photo.attach(io: file_alfred_dalton, filename: 'some-image.jpg', content_type: 'image/jpg')
  alfred_dalton.save!

# file_adam_levin = URI.open('./app/assets/images/joe_dalton.jpg')
adam_levin = User.new(
    name:    "Adam Levin",
    email: "adam@levin.com",
    phone_number: "O612345680",
    password: "123456"
  )
  # adam_levin.photo.attach(io: file_adam_levin, filename: 'some-image.jpg', content_type: 'image/jpg')
  adam_levin.save!

# file_manu_chao = URI.open('./app/assets/images/joe_dalton.jpg')
manu_chao = User.new(
    name:    "Manu Chao",
    email: "manu@chao.com",
    phone_number: "O612345681",
    password: "123456"
  )
  # manu_chao.photo.attach(io: file_manu_chao, filename: 'some-image.jpg', content_type: 'image/jpg')
  manu_chao.save!

# file_manu_chao = URI.open('./app/assets/images/joe_dalton.jpg')
margot_blakchouche = User.new(
    name:    "Margot Blakchouche",
    email: "margot@blakchouche.com",
    phone_number: "O612345682",
    password: "123456"
  )
  # manu_chao.photo.attach(io: file_manu_chao, filename: 'some-image.jpg', content_type: 'image/jpg')
  margot_blakchouche.save!

moktar_oulabala = User.new(
    name:    "Moktar Oulabala",
    email: "moktar@oulabala.com",
    phone_number: "O612345683",
    password: "123456"
  )
  # manu_chao.photo.attach(io: file_manu_chao, filename: 'some-image.jpg', content_type: 'image/jpg')
  moktar_oulabala.save!

idrissi_obama = User.new(
    name:    "Idrissi Obama",
    email: "idrissi@obama.com",
    phone_number: "O612345684",
    password: "123456"
  )
  # manu_chao.photo.attach(io: file_manu_chao, filename: 'some-image.jpg', content_type: 'image/jpg')
  idrissi_obama.save!


vinci_paradis_10 = Site.new(
    company:    "Vinci",
    address: "10, rue de Paradis"
  )
vinci_paradis_10.save!

vinci_richer_10 = Site.new(
    company:    "Vinci",
    address: "14, rue Richer"
  )
vinci_richer_10.save!

bouygue_lobineau_20 = Site.new(
    company:    "Bouygue",
    address: "20, rue Lobineau"
  )
bouygue_lobineau_20.save!

# eiffage_balard_30 = Site.new(
#     company:    "Eiffage",
#     address: "30, rue balard",
#   )
# eiffage_balard_30.save!


first_site_user = SiteUser.new(
  user: joe_dalton,
  site: vinci_paradis_10,
  manager: true
  )
first_site_user.save!

second_site_user = SiteUser.new(
  user: alfred_dalton,
  site: vinci_paradis_10,
  manager: false
  )
second_site_user.save!

third_site_user = SiteUser.new(
  user: adam_levin,
  site: vinci_richer_10,
  manager: true
  )
third_site_user.save!

fourth_site_user = SiteUser.new(
  user: manu_chao,
  site: vinci_richer_10,
  manager: false
  )
fourth_site_user.save!

fifth_site_user = SiteUser.new(
  user: margot_blakchouche,
  site: vinci_richer_10,
  manager: false
  )
fifth_site_user.save!

sixth_site_user = SiteUser.new(
  user: margot_blakchouche,
  site: bouygue_lobineau_20,
  manager: true
  )
sixth_site_user.save!

seventh_site_user = SiteUser.new(
  user: moktar_oulabala,
  site: bouygue_lobineau_20,
  manager: false
  )
seventh_site_user.save!

seventh_site_user = SiteUser.new(
  user: idrissi_obama,
  site: bouygue_lobineau_20,
  manager: false
  )
seventh_site_user.save!


# file_contreplaque_6 = URI.open('./app/assets/images/contreplaqué.jpg')
contreplaque_6 = Material.new(
    category: "Habillage",
    description: "6 contreplaqué en bon état",
    minimum_price: 100,
    deadline: Date.new(2019, 12, 20),
    status: "En ligne",
    site: vinci_paradis_10,
    site_user: first_site_user
  )
  # contreplaque_6.photo.attach(io: file_contreplaque_6, filename: 'some-image.jpg', content_type: 'image/jpg')
contreplaque_6.save!

# file_contreplaque_6 = URI.open('./app/assets/images/contreplaqué.jpg')
barrette_20 = Material.new(
    category: "plomberie",
    description: "20 barrettes de cuivres non-utilisées",
    minimum_price: 300,
    deadline: Date.new(2019, 12, 25),
    status: "Vendu",
    site: vinci_paradis_10,
    site_user: second_site_user
  )
  # contreplaque_6.photo.attach(io: file_contreplaque_6, filename: 'some-image.jpg', content_type: 'image/jpg')
barrette_20.save!

# file_contreplaque_6 = URI.open('./app/assets/images/contreplaqué.jpg')
vitre_4 = Material.new(
    category: "Habillage",
    description: "4 cloison vitrée dans un état de merde",
    minimum_price: 450,
    deadline: Date.new(2019, 12, 25),
    status: "En ligne",
    site: vinci_richer_10,
    site_user: third_site_user
  )
  # contreplaque_6.photo.attach(io: file_contreplaque_6, filename: 'some-image.jpg', content_type: 'image/jpg')
vitre_4.save!

# file_contreplaque_6 = URI.open('./app/assets/images/contreplaqué.jpg')
peinture_10 = Material.new(
    category: "Consommable",
    description: "10 pots de peinture non-ouverts",
    minimum_price: 40,
    deadline: Date.new(2019, 12, 25),
    status: "Vendu",
    site: vinci_richer_10,
    site_user: fourth_site_user
  )
  # contreplaque_6.photo.attach(io: file_contreplaque_6, filename: 'some-image.jpg', content_type: 'image/jpg')
peinture_10.save!

# file_contreplaque_6 = URI.open('./app/assets/images/contreplaqué.jpg')
moquette_1 = Material.new(
    category: "Consommable",
    description: "1 moquette rayée bleu/rouge non-utilisée",
    minimum_price: 70,
    deadline: Date.new(2020, 01, 13),
    status: "En ligne",
    site: vinci_richer_10,
    site_user: fifth_site_user
  )
  # contreplaque_6.photo.attach(io: file_contreplaque_6, filename: 'some-image.jpg', content_type: 'image/jpg')
moquette_1.save!

# file_contreplaque_6 = URI.open('./app/assets/images/contreplaqué.jpg')
kitchenette_2 = Material.new(
    category: "Habillage",
    description: "2 kitchenttes en bon état",
    minimum_price: 85,
    deadline: Date.new(2019, 12, 30),
    status: "Non-vendu",
    site: vinci_richer_10,
    site_user: sixth_site_user
  )
  # contreplaque_6.photo.attach(io: file_contreplaque_6, filename: 'some-image.jpg', content_type: 'image/jpg')
kitchenette_2.save!

# file_contreplaque_6 = URI.open('./app/assets/images/contreplaqué.jpg')
cloison_2 = Material.new(
    category: "Habillage",
    description: "2 cloisons double vitrage en très très bon état",
    minimum_price: 1200,
    deadline: Date.new(2019, 12, 21),
    status: "Remis",
    site: bouygue_lobineau_20,
    site_user: seventh_site_user
  )
  # contreplaque_6.photo.attach(io: file_contreplaque_6, filename: 'some-image.jpg', content_type: 'image/jpg')
cloison_2.save!


first_bid = Bid.new(
  user: idrissi_obama,
  price: 110,
  material: contreplaque_6
  )
first_bid.save!

second_bid = Bid.new(
  user: adam_levin,
  price: 115,
  material: contreplaque_6
  )
second_bid.save!

third_bid = Bid.new(
  user: manu_chao,
  price: 120,
  material: contreplaque_6
  )
third_bid.save!

fourth_bid = Bid.new(
  user: manu_chao,
  price: 320,
  material: barrette_20
  )
fourth_bid.save!

fifth_bid = Bid.new(
  user: alfred_dalton,
  price: 335,
  material: barrette_20
  )
fifth_bid.save!

sixth_bid = Bid.new(
  user: idrissi_obama,
  price: 460,
  material: vitre_4
  )
sixth_bid.save!

seventh_bid = Bid.new(
  user: margot_blakchouche,
  price: 460,
  material: vitre_4
  )
seventh_bid.save!

eight_bid = Bid.new(
  user: margot_blakchouche,
  price: 45,
  material: peinture_10
  )
eight_bid.save!

ninth_bid = Bid.new(
  user: idrissi_obama,
  price: 50,
  material: peinture_10
  )
ninth_bid.save!

ninth_bid = Bid.new(
  user: adam_levin,
  price: 55,
  material: peinture_10
  )
ninth_bid.save!

tenth_bid = Bid.new(
  user: moktar_oulabala,
  price: 1500,
  material: cloison_2
  )
tenth_bid.save!


