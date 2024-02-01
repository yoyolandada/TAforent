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

pedro = User.create!(email: "pedro@gmail.com", password: 654321, first_name: "Pedro", last_name: "BM")
grazia = User.create!(email: "grazia@gmail.com", password: 654321, first_name: "Grazia", last_name: "C")
lucia = User.create!(email: "lucia@gmail.com", password: 654321, first_name: "Lucia", last_name: "H")
dareos = User.create!(email: "dareos@gmail.com", password: 654321, first_name: "Dareos", last_name: "H")
jess = User.create!(email: "jess@gmail.com", password: 654321, first_name: "Jess", last_name: "SC")
dari = User.create!(email: "dari@gmail.com", password: 654321, first_name: "Dari", last_name: "G")
marco = User.create!(email: "marco@gmail.com", password: 654321, first_name: "Marco", last_name: "T")
yolanda = User.create!(email: "yolanda@gmail.com", password: 654321, first_name: "Yolanda", last_name: "M")
luisa = User.create!(email: "luisa@gmail.com", password: 654321, first_name: "Luisa", last_name: "S")
stamatis = User.create!(email: "stamatis@gmail.com", password: 654321, first_name: "Stamatis", last_name: "V")

puts "TAs and Users seeds created"

pedro_offer = Offer.create!(specialty: "L'Oréal aficionado", price: 5000, user: pedro)
grazia_offer = Offer.create!(specialty: "Chilled Logic Beast", price: 1000, user: grazia)
lucia_offer = Offer.create!(specialty: "Green Energy Fighter", price: 1000, user: lucia)
dareos_offer = Offer.create!(specialty: "Snappy Black humor", price: 1000, user: dareos)
jess_offer = Offer.create!(specialty: "Airbnb Crisis Resolution", price: 1000, user: dareos)
dari_offer = Offer.create!(specialty: "Stone Cold Problem Killer", price: 1000, user: dari)

puts "TA offers seeds created"

pedro_book_one = Booking.create!(start_date:"2024/04/02", end_date:"2024/02/03", user: stamatis, offer: pedro_offer)
pedro_book_two = Booking.create!(start_date:"2024/02/03", end_date:"2024/02/04", user: luisa, offer: pedro_offer)
grazia_book_one = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: marco, offer: grazia_offer)
grazia_book_two = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: yolanda, offer: grazia_offer)
lucia_book_one = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: yolanda, offer: lucia_offer)
lucia_book_two = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: stamatis, offer: lucia_offer)
dareos_book_one = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: marco, offer: dareos_offer)
dareos_book_two = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: luisa, offer: dareos_offer)
jess_book_one = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: stamatis, offer: jess_offer)
jess_book_two = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: marco, offer: jess_offer)
dari_book_one = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: luisa, offer: dari_offer)
dari_book_two = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: yolanda, offer: dari_offer)

puts "Bookings seeds completed "
