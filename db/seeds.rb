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
    description: "Contreplaqués",
    detailed_description: "2mx1m - 2kg - 6 unités en bon état",
    minimum_price: 8,
    deadline: Date.new(2019, 12, 7),
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
    deadline: Date.new(2019, 12, 2),
    status: "Cloturé",
    site: bouygues_lobineau_20,
    site_user: second_site_user
  )
  barrette_20.photo.attach(io: file_barrette_20, filename: 'barrette_20.jpg', content_type: 'image/jpg')
barrette_20.save!

file_vitre_4 = URI.open('http://www.lekapverre.fr/image.php/5677fc917b7275677d7df3cce6_cloison-40.jpg?width=480&height=480&cropratio=480:480/&image=/uploads/images/5677fc917b7275677d7df3cce6_cloison-40.jpg')
vitre_4 = Material.new(
    category: "Mur",
    description: "Cloisons vitrées",
    detailed_description: "5mx2m - 60kg - 4 unités neuves",
    minimum_price: 12,
    deadline: Date.new(2019, 12, 10),
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
    deadline: Date.new(2019, 12, 11),
    status: "En ligne",
    site: vinci_richer_10,
    site_user: fourth_site_user
  )
  peinture_10.photo.attach(io: file_peinture_10, filename: 'peinture_10.jpg', content_type: 'image/jpg')
peinture_10.save!

file_moquette_1  = URI.open('https://servimg.marche.fr/photo/big/73/22/61/61227374_1.jpg')
moquette_1 = Material.new(
    category: "Sol",
    description: "Moquette rayée bleu/rouge",
    detailed_description: "15mx10m - 10kg - 1 unité non utilisée",
    minimum_price: 5,
    deadline: Date.new(2019, 12, 25),
    status: "En ligne",
    site: vinci_richer_10,
    site_user: fifth_site_user
  )
  moquette_1 .photo.attach(io: file_moquette_1 , filename: 'moquette_1.jpg', content_type: 'image/jpg')
moquette_1.save!

file_kitchenette_2 = URI.open('https://www.cuisibane.com/3650-thickbox_default/kitchenette-k13-140-cm-avec-etagere-emplacement-hotte-refrigerateur-et-micro-ondes.jpg')
kitchenette_2 = Material.new(
    category: "Mobilier",
    description: "2 kitchenettes",
    detailed_description: "150cmx90cmx120cm - 120kg - 2 unités en bon état",
    minimum_price: 30,
    deadline: Date.new(2019, 12, 15),
    status: "En ligne",
    site: vinci_richer_10,
    site_user: sixth_site_user
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

file_cloison_5 = URI.open('https://www.simon-bureau.com/an_content/_upload/img-prod/206/3_1.jpg')
cloison_5 = Material.new(
    category: "Mur",
    description: "Cloisons isolantes",
    detailed_description: "150cmx100cm - 15kg - 5 unités neuves, made in Poland",
    minimum_price: 14,
    deadline: Date.new(2019, 12, 04),
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

file_store_4 = URI.open('https://www.maison-du-rideau-nevers.com/ressources/images/aec39d8f7f46.jpg')
store_4 = Material.new(
    category: "Mur",
    description: "Stores avec lamelles intérieures",
    detailed_description: "150cmx100cm - 5kg - 4 unités comme neuves",
    minimum_price: 15,
    deadline: Date.new(2019, 8, 17),
    status: "En ligne",
    site: vinci_richer_10,
    site_user: eighth_site_user
  )
  store_4.photo.attach(io: file_store_4, filename: 'store_4.jpg', content_type: 'image/jpg')
store_4.save!

file_radiateur_1 = URI.open('https://images.fr.shopping.rakuten.com/cat/500x500/radiateur+acier.jpg')
radiateur_1 = Material.new(
    category: "Mobilier",
    description: "Radiateur neuf",
    detailed_description: "60cmx100cm - 40kg - 1 unité made in Germany en bon état",
    minimum_price: 12,
    deadline: Date.new(2019, 12, 01),
    status: "Cloturé",
    site: bouygues_lobineau_20,
    site_user: fifth_site_user
  )
  radiateur_1.photo.attach(io: file_radiateur_1, filename: 'radiateur_1.jpg', content_type: 'image/jpg')
radiateur_1.save!

file_cloison_4 = URI.open('https://ifdb.eu/_images/c/cloison/cloison-de-bureau-vitr%C3%A9e-occasion/cloison-amovible-alu-avantages-des-cloisons-amovibles-de-bureau.jpg')
cloison_4 = Material.new(
    category: "Mur",
    description: "Grandes cloisons vitrées",
    detailed_description: "2mx5m - 60kg - 4 unités made in Spain de très bonne qualité",
    minimum_price: 2,
    deadline: Date.new(2019, 12, 20),
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
    deadline: Date.new(2019, 12, 23),
    status: "En ligne",
    site: bouygues_lobineau_20,
    site_user: eighth_site_user
  )
  table_10 .photo.attach(io: file_table_10 , filename: 'table_10.jpg', content_type: 'image/jpg')
table_10.save!

file_fauteuil_2 = URI.open('https://www.ainbugeynegoce.fr/wp-content/uploads/DSC03462.jpg')
fauteuil_2 = Material.new(
    category: "Mobilier",
    description: "10 fauteuils de bureau gris",
    detailed_description: "70cmx50cm - 5kg - 2 unités made in UK comme neufs",
    minimum_price: 20,
    deadline: Date.new(2019, 12, 28),
    status: "En ligne",
    site: bouygues_lobineau_20,
    site_user: eighth_site_user
  )
  fauteuil_2.photo.attach(io: file_fauteuil_2, filename: 'fauteuil_2.jpg', content_type: 'image/jpg')
fauteuil_2.save!

file_luminaire_2 = URI.open('https://media.paruvendu.fr/image/luminaire-exterieur/WB15/2/8/WB152819500_1.jpg')
luminaire_2 = Material.new(
    category: "Electricité",
    description: "2 luminaires exterieurs classique",
    detailed_description: "50cmx40cm - 20kg - 2 unités en bon état",
    minimum_price: 30,
    deadline: Date.new(2019, 12, 25),
    status: "En ligne",
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
    minimum_price: 40,
    deadline: Date.new(2019, 12, 10),
    status: "En ligne",
    site: bouygues_lobineau_20,
    site_user: eighth_site_user
  )
  vasque_4.photo.attach(io: file_vasque_4, filename: 'vasque_4.jpg', content_type: 'image/jpg')
vasque_4.save!

file_store_1_demo = URI.open('https://www.stores-et-rideaux.com/data/ProduitImage/produit-stores-venitiens-alu-25-mm-colori-gris-anthracite-option-1-guidage-non-option-2-cote-de-commande-droite/S-R-SVA-CdeDte-SansGuide_GrisAnthracite.jpg')
store_1 = Material.new(
    category: "Mur",
    description: "4 stores gris neufs",
    detailed_description: " 2 unités neuves",
    minimum_price: 8,
    deadline: Date.new(2019, 12, 10),
    status: "En ligne",
    site: bouygues_lobineau_20,
    site_user: eighth_site_user
  )
  store_1_demo.photo.attach(io: file_store_1_demo, filename: 'store_1_demo.jpg', content_type: 'image/jpg')
store_1_demo.save!

file_store_2_demo = URI.open('data:image/jpeg;base64,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')
store_1 = Material.new(
    category: "Mur",
    description: "Stores venitiens 30 cm ",
    detailed_description: "A recupérer au plus vite",
    minimum_price: 10,
    deadline: Date.new(2019, 12, 11),
    status: "En ligne",
    site: vinci_paradis_10,
    site_user: eighth_site_user
  )
  store_2_demo.photo.attach(io: file_store_2_demo, filename: 'store_2_demo.jpg', content_type: 'image/jpg')
store_2_demo.save!

file_store_3_demo = URI.open('https://www.domondo.fr/media/image/b5/28/51/zaluzje-faux_wood_14_725x725.jpg')
store_1 = Material.new(
    category: "Mur",
    description: "Stores vénitiens blancs ",
    detailed_description: "Métal - 2 unités",
    minimum_price: 10,
    deadline: Date.new(2019, 12, 13),
    status: "En ligne",
    site: vinci_richer_10,
    site_user: eighth_site_user
  )
  store_3_demo.photo.attach(io: file_store_3_demo, filename: 'store_3_demo.jpg', content_type: 'image/jpg')
store_3_demo.save!

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


bid_26= Bid.new(
  user: salim_cheddadi,
  price: 12,
  material: store_4

  )
bid_26.save!

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
