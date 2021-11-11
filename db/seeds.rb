if Rails.env.development?
  puts 'Resetting the database'
  Garden.destroy_all
  Plant.destroy_all
end

puts 'Lets create some gardens and plants'

Garden.create!(
  name: "Mein Kleiner Garten",
  banner_url: "https://12f70fc9d800ffb918d5-4645fd5f7c8031ec3480ac53a884ad73.ssl.cf3.rackcdn.com/gallery/garden.jpg"
)

Plant.create!(
  name: 'Apple Tree',
  color: 'purple',
  garden_id: Garden.first.id,
  photo_url: 'https://cdn.shopify.com/s/files/1/0557/0657/products/Malus-Laura-Fruit.jpg?v=1488075496'
)

plants_data = [
  {
    name: "Cactus",
    color: "green",
    garden: Garden.first,
    photo_url: "https://lw-cdn.com/images/A1610457498E/k_64d749ef09dea08977737ccf04939ee9;w_1600;h_1600;q_100/gruene-tischleuchte-cactus-mit-dekorativer-wirkung.jpg"
  },
  {
    name: "Pau Brasilis",
    color: "yellow",
    garden: Garden.first,
    photo_url: "https://www.significados.com.br/foto/rvore-paubrasil.jpg"
  },
  {
    name: "Barney the dinosaur",
    color: "purple",
    garden: Garden.first,
    photo_url: "http://images6.fanpop.com/image/photos/41500000/barney-the-dinosaur-barney-the-purple-dinosaur-41571621-1024-645.jpg"
  }
]

Plant.create!(plants_data)

Tag.create!(name: 'Fruit Tree')
Tag.create!(name: 'Flower')
Tag.create!(name: 'Cactus')
Tag.create!(name: 'Palm Tree')
Tag.create!(name: 'Greasy plant')

puts "Plants created!"
