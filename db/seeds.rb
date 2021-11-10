puts 'Lets create some plants'
Plant.create!(
  name: 'Apple Tree',
  color: 'purple',
  garden_id: Garden.first.id,
  photo_url: 'https://cdn.shopify.com/s/files/1/0557/0657/products/Malus-Laura-Fruit.jpg?v=1488075496'
)

Plant.create!(
  name: 'Cactus',
  color: 'green',
  garden_id: Garden.first.id,
  photo_url: 'https://lw-cdn.com/images/A1610457498E/k_64d749ef09dea08977737ccf04939ee9;w_1600;h_1600;q_100/gruene-tischleuchte-cactus-mit-dekorativer-wirkung.jpg'
)

puts "Plants created!"
