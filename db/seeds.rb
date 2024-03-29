require 'faker'
require 'open-uri'

Order.destroy_all
Bid.destroy_all
Material.destroy_all
SiteUser.destroy_all
Site.destroy_all
User.destroy_all

puts 'Cleaning database...'

# file_joe_dalton = URI.open('./app/assets/images/joe_dalton.jpg')

salim_cheddadi = User.new(
    name:    "Salim Cheddadi",
    email: "salim@cheddadi.com",
    phone_number: "O612343324",
    password: "123456"
  )
# PROFIL ACHETEUR
  # joe_dalton.photo.attach(io: file_joe_dalton, filename: 'some-image.jpg', content_type: 'image/jpg')
  salim_cheddadi.save!

celine_katz = User.new(
    name:    "Céline Katz",
    email: "celine@katz.com",
    phone_number: "O632343324",
    password: "123456"
  )
#PROFIL VENDEUR
  # joe_dalton.photo.attach(io: file_joe_dalton, filename: 'some-image.jpg', content_type: 'image/jpg')

  celine_katz.save!

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
    address: "10 rue de Paradis 75010 paris"
  )
vinci_paradis_10.save!

vinci_richer_10 = Site.new(
    company:    "Vinci",
    address: "14 rue Richer 75009 paris"
  )
vinci_richer_10.save!

bouygues_lobineau_20 = Site.new(
    company:    "Bouygues",
    address: "20 rue Lobineau 75006 Paris"
  )
bouygues_lobineau_20.save!

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
  site: bouygues_lobineau_20,
  manager: true
  )
sixth_site_user.save!

seventh_site_user = SiteUser.new(
  user: moktar_oulabala,
  site: bouygues_lobineau_20,
  manager: false
  )
seventh_site_user.save!

eighth_site_user = SiteUser.new(
  user: celine_katz,
  site: bouygues_lobineau_20,
  manager: false
  )
eighth_site_user.save!

ninth_site_user = SiteUser.new(
  user: salim_cheddadi,
  site: bouygues_lobineau_20,
  manager: false
  )
ninth_site_user.save!


file_contreplaque_6 = URI.open('https://media.paruvendu.fr/image/contreplaque/WB15/3/4/WB153418932_1.jpg')
contreplaque_6 = Material.new(
    category: "Mur",
    description: "Planche bois en contreplaqués",
    detailed_description: "2mx1m - 2kg - 6 unités en bon état",
    minimum_price: 8,
    deadline: Date.new(2020, 7, 27),
    status: "En ligne",
    site: vinci_paradis_10,
    site_user: first_site_user
  )
  contreplaque_6.photo.attach(io: file_contreplaque_6, filename: '6 contreplaque.jpg', content_type: 'image/jpg')
contreplaque_6.save!

file_barrette_20 = URI.open('https://www.metaloutil.fr/WebRoot/Orange/Shops/397878d8-3c3d-11e6-b2f1-000d609a287c/59FD/8E02/9445/CB73/67CE/0A0C/0596/B62B/P1070514_m.JPG')
barrette_20 = Material.new(
    category: "Electricité",
    description: "Barrettes de cuivre (2mx20cm)",
    detailed_description: "3kg - 20 unités non utilisées",
    minimum_price: 15,
    deadline: Date.new(2019, 11, 2),
    status: "Cloturé",
    site: bouygues_lobineau_20,
    site_user: eighth_site_user
  )
  barrette_20.photo.attach(io: file_barrette_20, filename: 'barrette_20.jpg', content_type: 'image/jpg')
barrette_20.save!

file_vitre_4 = URI.open('http://www.lekapverre.fr/image.php/5677fc917b7275677d7df3cce6_cloison-40.jpg?width=480&height=480&cropratio=480:480/&image=/uploads/images/5677fc917b7275677d7df3cce6_cloison-40.jpg')
vitre_4 = Material.new(
    category: "Mur",
    description: "Cloisons vitrées",
    detailed_description: "5mx2m - 60kg - 4 unités neuves",
    minimum_price: 12,
    deadline: Date.new(2020, 7, 10),
    status: "En ligne",
    site: vinci_richer_10,
    site_user: third_site_user
  )
  vitre_4.photo.attach(io: file_vitre_4, filename: 'vitre_4.jpg', content_type: 'image/jpg')
vitre_4.save!

file_peinture_10 = URI.open('https://media.paruvendu.fr/image/peinture/WB15/3/1/WB153141272_1.jpg')
peinture_10 = Material.new(
    category: "Mur",
    description: "10 pots de peinture blanche 2L",
    detailed_description: "10 unités non-ouvertes",
    minimum_price: 40,
    deadline: Date.new(2020, 7, 11),
    status: "En ligne",
    site: vinci_richer_10,
    site_user: fourth_site_user
  )
  peinture_10.photo.attach(io: file_peinture_10, filename: 'peinture_10.jpg', content_type: 'image/jpg')
peinture_10.save!

file_moquette_1  = URI.open('https://professionnels.tarkett.fr/media/img/M/TH_Frisk_7812.jpg')
moquette_1 = Material.new(
    category: "Sol",
    description: "Moquette verte",
    detailed_description: "15mx10m - 10kg - 1 unité non utilisée",
    minimum_price: 5,
    deadline: Date.new(2020, 7, 2),
    status: "Vendu",
    site: vinci_richer_10,
    site_user: fourth_site_user
  )
  moquette_1 .photo.attach(io: file_moquette_1 , filename: 'moquette_1.jpg', content_type: 'image/jpg')
moquette_1.save!

file_kitchenette_2 = URI.open('https://www.cuisibane.com/3650-thickbox_default/kitchenette-k13-140-cm-avec-etagere-emplacement-hotte-refrigerateur-et-micro-ondes.jpg')
kitchenette_2 = Material.new(
    category: "Mobilier",
    description: "2 kitchenettes",
    detailed_description: "150cmx90cmx120cm - 120kg - 2 unités en bon état",
    minimum_price: 30,
    deadline: Date.new(2020, 6, 26),
    status: "Vendu",
    site: vinci_richer_10,
    site_user: fourth_site_user
  )
  kitchenette_2.photo.attach(io: file_kitchenette_2, filename: 'kitchenette_2.jpg', content_type: 'image/jpg')
kitchenette_2.save!

file_cloison_2 = URI.open('http://www.macocco.com/globalflexit/images/img_base/gallery_v2/560_500_2_sas-vitre-zoo-de-vincennes-020-ss1.jpg')
cloison_2 = Material.new(
    category: "Mur",
    description: "Cloisons double vitrage",
    detailed_description: "250cmx150cm - 60kg - 2 unités en excellent état",
    minimum_price: 11,
    deadline: Date.new(2019, 11, 21),
    status: "Cloturé",
    site: bouygues_lobineau_20,
    site_user: eighth_site_user
  )
  cloison_2.photo.attach(io: file_cloison_2, filename: 'cloison_2.jpg', content_type: 'image/jpg')
cloison_2.save!

file_cloison_5 = URI.open('https://www.knauf.fr/sites/default/files/styles/landscape_half_xl/public/maison_individuelle_-_haguenau_68_-_cloison_garage_-_16-ret2.jpg?itok=6YFyGs4f')
cloison_5 = Material.new(
    category: "Mur",
    description: "Cloisons isolantes",
    detailed_description: "150cmx100cm - 15kg - 5 unités neuves, made in Poland",
    minimum_price: 14,
    deadline: Date.new(2020, 6, 04),
    status: "Vendu",
    site: bouygues_lobineau_20,
    site_user: eighth_site_user
  )
  cloison_5.photo.attach(io: file_cloison_5, filename: 'cloison_5.jpg', content_type: 'image/jpg')
cloison_5.save!

file_moquette_10 = URI.open('https://ag-cdn-production.azureedge.net/produits/images/d4858211-2f84-4e34-b308-e63882ad126b_800.jpg')
moquette_10 = Material.new(
    category: "Sol",
    description: "Moquette grise",
    detailed_description: "10mx5m - 4kg - 10 unités utilisées et en bon état, made in France",
    minimum_price: 30,
    deadline: Date.new(2019, 10, 4),
    status: "Vendu",
    site: bouygues_lobineau_20,
    site_user: eighth_site_user
  )
  moquette_10.photo.attach(io: file_moquette_10, filename: 'moquette_10.jpg', content_type: 'image/jpg')
moquette_10.save!

file_radiateur_1 = URI.open('https://images.fr.shopping.rakuten.com/cat/500x500/radiateur+acier.jpg')
radiateur_1 = Material.new(
    category: "Mobilier",
    description: "Radiateur neuf",
    detailed_description: "60cmx100cm - 40kg - 1 unité made in Germany en bon état",
    minimum_price: 12,
    deadline: Date.new(2019, 12, 01),
    status: "Cloturé",
    site: bouygues_lobineau_20,
    site_user: eighth_site_user
  )
  radiateur_1.photo.attach(io: file_radiateur_1, filename: 'radiateur_1.jpg', content_type: 'image/jpg')
radiateur_1.save!

file_cloison_4 = URI.open('https://www.rolleco.fr/115214-pos_large/cloison-de-bureau-semi-vitre-hauteur-1600-mm.jpg?frz-v=120')
cloison_4 = Material.new(
    category: "Mur",
    description: "Grandes cloisons vitrées",
    detailed_description: "2mx5m - 60kg - 4 unités made in Spain de très bonne qualité",
    minimum_price: 2,
    deadline: Date.new(2020, 8, 20),
    status: "En ligne",
    site: bouygues_lobineau_20,
    site_user: eighth_site_user
  )
  cloison_4.photo.attach(io: file_cloison_4, filename: 'cloison_4.jpg', content_type: 'image/jpg')
cloison_4.save!

file_table_10 = URI.open('https://manager.web-troc.com/medias/depots-vente/38/article/43656_9443.jpg')
table_10 = Material.new(
    category: "Mobilier",
    description: "Petites tables en bois rondes",
    detailed_description: "60cmx60cm - 15kg - 10 unités neuves très design",
    minimum_price: 10,
    deadline: Date.new(2020, 7, 23),
    status: "En ligne",
    site: bouygues_lobineau_20,
    site_user: eighth_site_user
  )
  table_10 .photo.attach(io: file_table_10 , filename: 'table_10.jpg', content_type: 'image/jpg')
table_10.save!

file_fauteuil_2 = URI.open('https://cdn.vente-unique.com/thumbnails/rs/930/346/346261/0/fauteuil-de-bureau_346261.jpg')
fauteuil_2 = Material.new(
    category: "Mobilier",
    description: "10 fauteuils de bureau gris",
    detailed_description: "70cmx50cm - 5kg - 2 unités made in UK comme neufs",
    minimum_price: 20,
    deadline: Date.new(2020, 8, 28),
    status: "En ligne",
    site: bouygues_lobineau_20,
    site_user: eighth_site_user
  )
  fauteuil_2.photo.attach(io: file_fauteuil_2, filename: 'fauteuil_2.jpg', content_type: 'image/jpg')
fauteuil_2.save!

file_luminaire_2 = URI.open('https://media.paruvendu.fr/image/luminaire-exterieur/WB15/2/8/WB152819500_1.jpg')
luminaire_2 = Material.new(
    category: "Electricité",
    description: "2 luminaires exterieurs classiques",
    detailed_description: "50cmx40cm - 20kg - 2 unités en bon état",
    minimum_price: 30,
    deadline: Date.new(2019, 11, 25),
    status: "Cloturé",
    site: bouygues_lobineau_20,
    site_user: eighth_site_user
  )
  luminaire_2.photo.attach(io: file_luminaire_2, filename: 'luminaire_2.jpg', content_type: 'image/jpg')
luminaire_2.save!

file_vasque_4 = URI.open('https://manager.web-troc.com/medias/depots-vente/46/article/99251_5351.jpg')
vasque_4 = Material.new(
    category: "Plomberie",
    description: "4 vasques blancs",
    detailed_description: "90cmx50cmx30cm - 15kg - 4 unités neuves",
    minimum_price: 30,
    deadline: Date.new(2020, 7, 10),
    status: "En ligne",
    site: bouygues_lobineau_20,
    site_user: eighth_site_user
  )
  vasque_4.photo.attach(io: file_vasque_4, filename: 'vasque_4.jpg', content_type: 'image/jpg')
vasque_4.save!

file_store_1 = URI.open('https://www.stores-et-rideaux.com/data/ProduitImage/produit-stores-venitiens-alu-25-mm-colori-gris-anthracite-option-1-guidage-non-option-2-cote-de-commande-droite/S-R-SVA-CdeDte-SansGuide_GrisAnthracite.jpg')
store_1 = Material.new(
    category: "Mur",
    description: "Stores gris neufs",
    detailed_description: " 2 unités neuves",
    minimum_price: 8,
    deadline: Date.new(2020, 7, 10),
    status: "En ligne",
    site: vinci_paradis_10,
    site_user: fourth_site_user
  )
  store_1.photo.attach(io: file_store_1, filename: 'store_1.jpg', content_type: 'image/jpg')
store_1.save!

file_store_2 = URI.open('https://www.epoxia.com/media/catalog/product/cache/1/image/1080x/d7026a79cb3dd614b91b249de618db15/s/t/store-venitien-alu.jpg')
store_2 = Material.new(
    category: "Mur",
    description: "4 stores vénitiens rouges 30 cm ",
    detailed_description: "A recupérer au plus vite",
    minimum_price: 10,
    deadline: Date.new(2020, 7, 3),
    status: "En ligne",
    site: vinci_paradis_10,
    site_user: fourth_site_user
  )
  store_2.photo.attach(io: file_store_2, filename: 'store_2.jpg', content_type: 'image/jpg')
store_2.save!

file_store_3 = URI.open('https://www.domondo.fr/media/image/b5/28/51/zaluzje-faux_wood_14_725x725.jpg')
store_3 = Material.new(
    category: "Mur",
    description: "Stores vénitiens blancs ",
    detailed_description: "Métal - 2 unités",
    minimum_price: 10,
    deadline: Date.new(2020, 7, 13),
    status: "En ligne",
    site: vinci_richer_10,
    site_user: fourth_site_user
  )
  store_3.photo.attach(io: file_store_3, filename: 'store_3.jpg', content_type: 'image/jpg')
store_3.save!

bid_1 = Bid.new(
  user: idrissi_obama,
  price: 10,
  material: contreplaque_6
  )
bid_1.save!

bid_2 = Bid.new(
  user: adam_levin,
  price: 12,
  material: contreplaque_6
  )
bid_2.save!

bid_3 = Bid.new(
  user: manu_chao,
  price: 14,
  material: contreplaque_6
  )
bid_3.save!

bid_4 = Bid.new(
  user: manu_chao,
  price: 22,
  material: barrette_20
  )
bid_4.save!

bid_5 = Bid.new(
  user: alfred_dalton,
  price: 24,
  material: barrette_20
  )
bid_5.save!

bid_6 = Bid.new(
  user: idrissi_obama,
  price: 14,
  material: vitre_4
  )
bid_6.save!

bid_7 = Bid.new(
  user: margot_blakchouche,
  price: 16,
  material: vitre_4
  )
bid_7.save!

bid_8 = Bid.new(
  user: margot_blakchouche,
  price: 45,
  material: peinture_10
  )
bid_8.save!

bid_9 = Bid.new(
  user: idrissi_obama,
  price: 50,
  material: peinture_10
  )
bid_9.save!

bid_10 = Bid.new(
  user: adam_levin,
  price: 55,
  material: peinture_10
  )
bid_10.save!

bid_11 = Bid.new(
  user: moktar_oulabala,
  price: 13,
  material: cloison_2
  )
bid_11.save!

bid_12 = Bid.new(
  user: margot_blakchouche,
  price: 13,
  material: radiateur_1
  )
bid_12.save!

bid_13 = Bid.new(
  user: alfred_dalton,
  price: 14,
  material: radiateur_1
  )
bid_13.save!

bid_14 = Bid.new(
  user: moktar_oulabala,
  price: 15,
  material: radiateur_1
  )
bid_14.save!

# bid_15 = Bid.new(
#   user: alfred_dalton,
#   price: 10,
#   material: store_4
#   )
# bid_15.save!

# bid_16 = Bid.new(
#   user: adam_levin,
#   price: 12,
#   material: store_4
#   )
# bid_16.save!

bid_17 = Bid.new(
  user: adam_levin,
  price: 34,
  material: moquette_10
  )
bid_17.save!

bid_18 = Bid.new(
  user: adam_levin,
  price: 15,
  material: cloison_5
  )
bid_18.save!

bid_19 = Bid.new(
  user: manu_chao,
  price: 16,
  material: cloison_5
  )
bid_19.save!

bid_19 = Bid.new(
  user: margot_blakchouche,
  price: 17,
  material: cloison_5
  )
bid_19.save!


bid_20 = Bid.new(
  user: idrissi_obama,
  price: 32,
  material: fauteuil_2
  )
bid_20.save!

bid_21 = Bid.new(
  user: salim_cheddadi,
  price: 45,
  material: peinture_10
  )
bid_21.save!

bid_22 = Bid.new(
  user: salim_cheddadi,
  price: 7,
  material: moquette_1
  )
bid_22.save!

bid_23 = Bid.new(
  user: salim_cheddadi,
  price: 40,
  material: kitchenette_2
  )
bid_23.save!

bid_24= Bid.new(
  user: salim_cheddadi,
  price: 20,
  material: radiateur_1
  )
bid_24.save!

bid_25= Bid.new(
  user: salim_cheddadi,
  price: 25,
  material: barrette_20
  )
bid_25.save!


bid_27= Bid.new(
  user: salim_cheddadi,
  price: 11,
  material: cloison_5

  )
bid_27.save!

bid_28= Bid.new(
  user: salim_cheddadi,
  price: 11,
  material: cloison_2

  )
bid_28.save!
