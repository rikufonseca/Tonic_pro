puts "Destroy all datas..."
puts "..."
puts "..."

User.destroy_all
SubCategory.destroy_all
Category.destroy_all
Client.destroy_all

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

cat_five = Category.create!(
  name: "combo"
)

puts "category created"
puts ""

puts "create sub_categories"
puts ""

SubCategory.create!(
  category_id: cat_one.id,
  name: "Manicure απλο",
  price: 13,
  time: 1200
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "Manicure Ημιμόνιμο",
  price: 18,
  time: 1800
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "Manicure Ημιμόνιμο (σχήμα - χρώμα)",
  price: 15,
  time: 1200
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "aplo (σχήμα - χρώμα)",
  price: 10,
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
  price: 43,
  time: 3600
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "ΤοποΘέτηση τεχνητών acrylic",
  price: 46,
  time: 3600
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "ΤοποΘέτηση τεχνητών gel",
  price: 43,
  time: 3600
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "Φυσική Ενίσχυση acrygel",
  price: 35,
  time: 3600
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "Φυσική Ενίσχυση acrylic",
  price: 40,
  time: 3600
)

SubCategory.create!(
  category_id: cat_one.id,
  name: "Φυσική Ενίσχυση gel",
  price: 35,
  time: 3600
)

SubCategory.create!(
  category_id: cat_two.id,
  name: "Pedicure απλο",
  price: 17,
  time: 1800
)

SubCategory.create!(
  category_id: cat_two.id,
  name: "Pedicure Ημιμόνιμο",
  price: 23,
  time: 2400
)

SubCategory.create!(
  category_id: cat_two.id,
  name: "Pedicure θεραπευτικο",
  price: 30,
  time: 3000
)

SubCategory.create!(
  category_id: cat_four.id,
  name: "Χτισιμό ενός νυχίου",
  price: 4,
  time: 300
)

SubCategory.create!(
  category_id: cat_four.id,
  name: "Σχεδίο",
  price: 5,
  time: 120
)

SubCategory.create!(
  category_id: cat_four.id,
  name: "Rubber Base",
  price: 2,
  time: 120
)

SubCategory.create!(
  category_id: cat_three.id,
  name: "Manicure",
  price: 14,
  time: 1200
)

SubCategory.create!(
  category_id: cat_three.id,
  name: "Pedicure",
  price: 18,
  time: 1500
)

SubCategory.create!(
  category_id: cat_five.id,
  name: "Semi-permanent Combo",
  price: 37,
  time: 5400
)

SubCategory.create!(
  category_id: cat_five.id,
  name: "Simple Combo",
  price: 26,
  time: 2000
)

SubCategory.create!(
  category_id: cat_five.id,
  name: "nails-booster Combo",
  price: 50,
  time: 6000
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

puts "seeds done"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
