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
puts "Populated the data into User table "

Chair.create!(name: "Office Chair", price: 120, user_id: user1.id)
Chair.create!(name: "Gaming Chair", price: 220, user_id: user1.id)
Chair.create!(name: "Dining Chair", price: 80, user_id: user2.id)
Chair.create!(name: "Lounge Chair", price: 150, user_id: user2.id)
puts "Populated the date into Chair table"
