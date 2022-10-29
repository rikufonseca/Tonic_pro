puts "Destroy all datas..."
puts "..."
puts "..."

User.destroy_all
Category.destroy_all
SubCategory.destroy_all
Client.destroy_all
ComboOffer.destroy_all
Offer.destroy_all

puts "All datas destroyed !"
puts ""

User.create!(email: "fonsecarika@gmail.com", password: "123456789")

puts "Rika created !"
puts ""

puts "create categories"
puts ""

cat_one = Category.create!(
  name: "Manicure"
)

cat_two = Category.create!(
  name: "Pedicure"
)

cat_three = Category.create!(
  name: "Αντρική περιποίηση"
)

cat_four = Category.create!(
  name: "εξτρα"
)

puts "category created"
puts ""

puts "create sub_categories"
puts ""

SubCategory.create!(
  category_id: cat_one.id,
  name: "Manicure απλο",
  price: 11,
  time: 1200
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "Manicure Ημιμόνιμο",
  price: 16,
  time: 1800
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "Ημιμόνιμο (σχήμα - χρώμα)",
  price: 10,
  time: 1200
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "aplo (σχήμα - χρώμα)",
  price: 6,
  time: 900
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "Αφαίρεση Ημιμόνιμου",
  price: 5,
  time: 300
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "Αφαίρεση Τεχνητών",
  price: 10,
  time: 900
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "ΤοποΘέτηση τεχνητών acrygel",
  price: 40,
  time: 3600
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "ΤοποΘέτηση τεχνητών acrylic",
  price: 45,
  time: 3600
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "ΤοποΘέτηση τεχνητών gel",
  price: 40,
  time: 3600
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "Φυσική Ενίσχυση acrygel",
  price: 30,
  time: 3600
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "Φυσική Ενίσχυση acrylic",
  price: 35,
  time: 3600
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "Φυσική Ενίσχυση gel",
  price: 30,
  time: 3600
)

SubCategory.create!(
  category_id: cat_two.id,
  name: "Pedicure απλο",
  price: 15,
  time: 1800
)

SubCategory.create!(
  category_id: cat_two.id,
  name: "Pedicure Ημιμόνιμο",
  price: 20,
  time: 2400
)

SubCategory.create!(
  category_id: cat_two.id,
  name: "Pedicure θεραπευτικο",
  price: 23,
  time: 3000
)

SubCategory.create!(
  category_id: cat_four.id,
  name: "Χτισιμό ενός νυχίου",
  price: 3,
  time: 300
)

SubCategory.create!(
  category_id: cat_four.id,
  name: "Σχεδίο",
  price: 1,
  time: 120
)

SubCategory.create!(
  category_id: cat_four.id,
  name: "Rubber Base",
  price: 2,
  time: 120
)

SubCategory.create!(
  category_id: cat_four.id,
  name: "Φρύδια",
  price: 5,
  time: 300
)

SubCategory.create!(
  category_id: cat_three.id,
  name: "Manicure",
  price: 10,
  time: 1200
)

SubCategory.create!(
  category_id: cat_three.id,
  name: "Pedicure",
  price: 15,
  time: 1500
)
puts "sub_categories created!"
puts ""

puts "Create Clients!"

Client.create!(
  name: "Nadia",
  surname: "Variti",
  phone_number: "6947592020",
  email: "nadiavariti@gmail.com"
)

Client.create!(
  name: "Loris",
  surname: "Reynaud",
  phone_number: "6947591919",
  email: "lolo@gmail.com"
)

Client.create!(
  name: "Fanny",
  surname: "Renard",
  phone_number: "6947909099",
  email: "fa@gmail.com"
)

puts "Client created!"
puts ""

puts "Create  Combo Offer!"
puts ""

ComboOffer.create!(
  name: "Semi-permanent Combo",
  price: 30,
  status: true,
  description: "semi-permanent xeria podia mazi",
  time: 5400
)

ComboOffer.create!(
  name: "nails-lover Combo",
  price: 42,
  status: true,
  description: "Φυσική Ενίσχυση xeria and semi-premanent podia",
  time: 6000
)

puts "Combo Offer create!"
puts ""

puts "create Offers"
puts ""

Offer.create!(
  description: "after 10 manicure aplo 50% on the 11th one",
  status: true,
  sub_category_id: 1,
  required_number: 10,
  percentage: 50
)

Offer.create!(
  description: "after 5 Φυσική Ενίσχυση acrygel 15% on the 5th one",
  status: true,
  sub_category_id: 7,
  required_number: 5,
  percentage: 15
)

Offer.create!(
  description: "after 6 Φυσική Ενίσχυση gel 1 nails art offer",
  status: true,
  sub_category_id: 9,
  required_number: 6
)

puts "Offers created"
puts ""


puts "seeds done"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
