# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Chair.destroy_all
puts "Chair table destroyed"
User.destroy_all
puts "User table destroyed"
user1 = User.create!(email: 'user1@example.com', password: 'password', username: "user1")
user2 = User.create!(email: 'user2@example.com', password: 'password', username: "user2")
user3 = User.create!(email: 'daenerys@queen.com', password: 'password', username: "breaker_of_chains")
puts "Populated the data into User table "

Chair.create!(name: "Office Chair", price: 120, user_id: user1.id, image_url: "https://furniture123.co.uk/Images/FNX001_1_Supersize.jpg?v=10")
Chair.create!(name: "Gaming Chair", price: 220, user_id: user1.id, image_url: "https://xrockergaming.com/cdn/shop/articles/Neomotion_Floor_Rocker_1400x.png?v=1664995942")
Chair.create!(name: "Dining Chair", price: 80, user_id: user2.id, image_url: "https://m.media-amazon.com/images/I/51xiO7wj55L.jpg")
Chair.create!(name: "Lounge Chair", price: 150, user_id: user2.id, image_url: "https://www.coxandcox.co.uk/media/catalog/product/s/s/ss20-1226244.png?quality=80&fit=bounds&height=800&width=800")
Chair.create!(name: "The Iron Throne", price: 100000, user_id: user3.id, image_url: "https://w0.peakpx.com/wallpaper/25/983/HD-wallpaper-daenerys-targaryen-queen-of-the-ashes-in-the-iron-throne.jpg")
puts "Populated the date into Chair table"
