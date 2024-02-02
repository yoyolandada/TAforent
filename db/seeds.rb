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

marco = User.create!(email: "marco@jail.com", password: 654321, first_name: "Marco", last_name: "T")
yolanda = User.create!(email: "yolanda@jail.com", password: 654321, first_name: "Yolanda", last_name: "M")
luisa = User.create!(email: "luisa@jail.com", password: 654321, first_name: "Luisa", last_name: "S")
stamatis = User.create!(email: "stamatis@jail.com", password: 654321, first_name: "Stamatis", last_name: "V")

puts "User seeds created"

pedro = User.create!(email: "pedro@jail.com", password: 654321, first_name: "Pedro", last_name: "BM", ta: true)
grazia = User.create!(email: "grazia@jail.com", password: 654321, first_name: "Grazia", last_name: "C", ta: true)
lucia = User.create!(email: "lucia@jail.com", password: 654321, first_name: "Lucia", last_name: "H", ta: true)
dareos = User.create!(email: "dareos@jail.com", password: 654321, first_name: "Dareos", last_name: "H", ta: true)
jess = User.create!(email: "jess@jail.com", password: 654321, first_name: "Jess", last_name: "SC", ta: true)
dari = User.create!(email: "dari@jail.com", password: 654321, first_name: "Dari", last_name: "G", ta: true)
arbi = User.create!(email: "arbi@jail.com", password: 654321, first_name: "Arbi", last_name: "V", ta: true)

puts "TA seeds created"

pedro_offer_one = Offer.create!(specialty: "L'Oréal aficionado", price: 1000, user: pedro)
pedro_offer_two = Offer.create!(specialty: "SQL", price: 500, user: pedro)
pedro_offer_three = Offer.create!(specialty: "Ruby on Rails", price: 500, user: pedro)

grazia_offer_one = Offer.create!(specialty: "Chilled Logic Beast", price: 1000, user: grazia)
grazia_offer_two = Offer.create!(specialty: "Ruby on Rails", price: 500, user: grazia)
grazia_offer_three = Offer.create!(specialty: "Python", price: 500, user: grazia)

lucia_offer_one = Offer.create!(specialty: "Green Energy Fighter", price: 1000, user: lucia)
lucia_offer_two = Offer.create!(specialty: "Ruby on Rails", price: 500, user: lucia)
lucia_offer_three = Offer.create!(specialty: "HTML", price: 500, user: lucia)

dareos_offer_one = Offer.create!(specialty: "Snappy Black humor", price: 1000, user: dareos)
dareos_offer_two = Offer.create!(specialty: "Ruby on Rails", price: 500, user: dareos)
dareos_offer_three = Offer.create!(specialty: "CSS", price: 500, user: dareos)

jess_offer_one = Offer.create!(specialty: "Airbnb Crisis Resolution", price: 1000, user: jess)
jess_offer_two = Offer.create!(specialty: "Ruby on Rails", price: 500, user: jess)
jess_offer_three = Offer.create!(specialty: "Javascript", price: 500, user: jess)

dari_offer_one = Offer.create!(specialty: "Stone Cold Problem Killer", price: 1000, user: dari)
dari_offer_two = Offer.create!(specialty: "Ruby on Rails", price: 500, user: dari)
dari_offer_three = Offer.create!(specialty: "Java", price: 500, user: dari)

arbi_offer_one = Offer.create!(specialty: "Juventus worship rant", price: 1000, user: arbi)
arbi_offer_two = Offer.create!(specialty: "Ruby on Rails", price: 500, user: arbi)
arbi_offer_three = Offer.create!(specialty: "React Native", price: 500, user: arbi)

puts "TA_offers seeds created"

pedro_book_one = Booking.create!(start_date:"2024/04/02", end_date:"2024/02/03", user: stamatis, offer: pedro_offer_one, confirmation: 10)
pedro_book_two = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: luisa, offer: pedro_offer_two, confirmation: 20)
pedro_book_three = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: luisa, offer: pedro_offer_three, confirmation: 30)

grazia_book_one = Booking.create!(start_date:"2024/02/11", end_date:"2024/02/13", user: marco, offer: grazia_offer_one, confirmation: 10)
grazia_book_two = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: yolanda, offer: grazia_offer_two, confirmation: 20)
grazia_book_three = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: yolanda, offer: grazia_offer_three, confirmation: 30)

lucia_book_one = Booking.create!(start_date:"2024/04/02", end_date:"2024/02/03", user: marco, offer: lucia_offer_one, confirmation: 10)
lucia_book_two = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: stamatis, offer: lucia_offer_two, confirmation: 20)
lucia_book_three = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: stamatis, offer: lucia_offer_three, confirmation: 30)

dareos_book_one = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: marco, offer: dareos_offer_one, confirmation: 10)
dareos_book_two = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: luisa, offer: dareos_offer_two, confirmation: 20)
dareos_book_three = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: luisa, offer: dareos_offer_three, confirmation: 30)

jess_book_one = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: stamatis, offer: jess_offer_one, confirmation: 10)
jess_book_two = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: marco, offer: jess_offer_two, confirmation: 20)
jess_book_three = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: luisa, offer: jess_offer_three, confirmation: 30)

dari_book_one = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: luisa, offer: dari_offer_one, confirmation: 10)
dari_book_two = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: yolanda, offer: dari_offer_two, confirmation: 20)
dari_book_three = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: marco, offer: dari_offer_three, confirmation: 30)

arbi_book_one = Booking.create!(start_date:"2024/02/13", end_date:"2024/02/18", user: yolanda, offer: arbi_offer_one, confirmation: 10)
arbi_book_two = Booking.create!(start_date:"2024/02/24", end_date:"2024/02/29", user: stamatis, offer: arbi_offer_two, confirmation: 20)
arbi_book_three = Booking.create!(start_date:"2024/02/24", end_date:"2024/02/29", user: marco, offer: arbi_offer_three, confirmation: 30)

puts "Bookings seeds completed"
