# This file should ensure the existence of records required to run the application in every environment (production,
# development, te/home/harvimax/code/Temitayo519/CHAIRBNB/configst). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Booking.destroy_all
puts "Booking table destroyed"
Chair.destroy_all
puts "Chair table destroyed"
User.destroy_all
puts "User table destroyed"
user1 = User.create!(email: 'user1@example.com', password: 'password', username: "user1")
user2 = User.create!(email: 'user2@example.com', password: 'password', username: "user2")
user3 = User.create!(email: 'daenerys@queen.com', password: 'password', username: "breaker_of_chains")
puts "Populated the data into User table "

Chair.create!(name: "Office Chair", price: 12, user_id: user1.id, image_url: "https://furniture123.co.uk/Images/FNX001_1_Supersize.jpg?v=10", description: "This chair blends modern design with comfort, offering a sleek silhouette and a soft green fabric. Its minimalist style fits any space beautifully. Perfect for relaxation!")
Chair.create!(name: "Gaming Chair", price: 22, user_id: user1.id, image_url: "https://xrockergaming.com/cdn/shop/articles/Neomotion_Floor_Rocker_1400x.png?v=1664995942", description: "The stylish design of this gaming chair offers both comfort and functionality. The built-in speakers enhance the gaming experience, while its low profile adds style. Highly immersive!")
Chair.create!(name: "Dining Chair", price: 8, user_id: user2.id, image_url: "https://www.crownfrenchfurniture.co.uk/media/catalog/product/cache/d54e223a5ba71a2640c5d6d197d11109/a/r/artisan_contemporary_dining_chair.jpg", description: "This elegant dining chair combines a refined look with superb comfort. The craftsmanship is exceptional, and its modern design enhances any dining space. Perfect for sophisticated gatherings!")
Chair.create!(name: "Lounge Chair", price: 15, user_id: user2.id, image_url: "https://www.coxandcox.co.uk/media/catalog/product/s/s/ss20-1226244.png?quality=80&fit=bounds&height=800&width=800", description: "This beautifully crafted chair exudes rustic charm with its woven seat and natural wooden frame. Its timeless design adds warmth to any room. Ideal for cozy, relaxed spaces!")
Chair.create!(name: "The Iron Throne", price: 100000, user_id: user3.id, image_url: "https://akns-images.eonline.com/eol_images/Entire_Site/2022614/rs_1024x759-220714123658-1024-Iron_Throne_from_Game_of_Thrones.jpg?fit=around%7C1024:759&output-quality=90&crop=1024:759;center,top", description: "This iconic Iron Throne, forged from conquered swords, embodies Westeros' power struggles. Its sharp, imposing design signifies the peril of ruling the Seven Kingdoms. Truly legendary!")
puts "Populated the date into Chair table"
