# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Booking.destroy_all
Offer.destroy_all
User.destroy_all

pedro = User.create!(email: "pedro@gmail.com", password: 654321, first_name: "Pedro", last_name: "P", ta: true)
pedro_haircut = Offer.create!(specialty: "hair-cut", price: 40, user: pedro)
grazia = User.create!(email: "grazia@gmail.com", password: 654321, first_name: "Grazia", last_name: "B")
grazia_lesson = Offer.create!(specialty: "italian", price: 50, user: grazia)
lucia = User.create!(email: "lucia@gmail.com", password: 654321, first_name: "Lucia", last_name: "H")
lucia_lesson = Offer.create!(specialty: "green-energy", price: 20, user: lucia)
dareos = User.create!(email: "dareos@gmail.com", password: 654321, first_name: "Dareos", last_name: "B")
dareos_chereoos = Offer.create!(specialty: "Chereoos", price: 40, user: dareos)
marco = User.create!(email: "marco@gmail.com", password: 654321, first_name: "Marco", last_name: "T")
yolanda = User.create!(email: "yolanda@gmail.com", password: 654321, first_name: "Yolanda", last_name: "M")
luisa = User.create!(email: "luisa@gmail.com", password: 654321, first_name: "Luisa", last_name: "S")
stamatis = User.create!(email: "stamatis@gmail.com", password: 654321, first_name: "Stamatis", last_name: "V")

puts "seeds completed"
