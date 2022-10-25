puts "Destroy all datas..."
puts "..."
puts "..."

User.destroy_all
Cathegory.destroy_all
SubCathegory.destroy_all

puts "All datas destroyed !"
puts ""

User.create!(email: "fonsecarika@gmail.com", password: "123456789")

puts "Rika created !"
puts ""

puts "create cathegories"
puts ""

cat_one = Cathegory.create!(
  name: "Manicure"
)

cat_two = Cathegory.create!(
  name: "Pedicure"
)

cat_three = Cathegory.create!(
  name: "Αντρική περιποίηση"
)

cat_four = Cathegory.create!(
  name: "εξτρα"
)

puts "cathegory created"
puts ""

puts "create sub_cathegories"
puts ""

SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Manicure απλο",
  price: 11,
  time: 1200
)

SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Manicure Ημιμόνιμο",
  price: 16,
  time: 1800
)

SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Ημιμόνιμο (σχήμα - χρώμα)",
  price: 10,
  time: 1200
)

SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "aplo (σχήμα - χρώμα)",
  price: 6,
  time: 900
)

SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Αφαίρεση Ημιμόνιμου",
  price: 5,
  time: 300
)

SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Αφαίρεση Τεχνητών",
  price: 10,
  time: 900
)

SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "ΤοποΘέτηση τεχνητών acrygel",
  price: 40,
  time: 3600
)

SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "ΤοποΘέτηση τεχνητών acrylic",
  price: 45,
  time: 3600
)

SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "ΤοποΘέτηση τεχνητών gel",
  price: 40,
  time: 3600
)

SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Φυσική Ενίσχυση acrygel",
  price: 30,
  time: 3600
)

SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Φυσική Ενίσχυση acrylic",
  price: 35,
  time: 3600
)

SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Φυσική Ενίσχυση gel",
  price: 30,
  time: 3600
)

SubCathegory.create!(
  cathegory_id: cat_two.id,
  name: "Pedicure απλο",
  price: 15,
  time: 1800
)

SubCathegory.create!(
  cathegory_id: cat_two.id,
  name: "Pedicure Ημιμόνιμο",
  price: 20,
  time: 2400
)

SubCathegory.create!(
  cathegory_id: cat_two.id,
  name: "Pedicure θεραπευτικο",
  price: 23,
  time: 3000
)

SubCathegory.create!(
  cathegory_id: cat_four.id,
  name: "Χτισιμό ενός νυχίου",
  price: 3,
  time: 300
)

SubCathegory.create!(
  cathegory_id: cat_four.id,
  name: "Σχεδίο",
  price: 1,
  time: 120
)

SubCathegory.create!(
  cathegory_id: cat_four.id,
  name: "Rubber Base",
  price: 2,
  time: 120
)

SubCathegory.create!(
  cathegory_id: cat_four.id,
  name: "Φρύδια",
  price: 5,
  time: 300
)

SubCathegory.create!(
  cathegory_id: cat_three.id,
  name: "Manicure",
  price: 10,
  time: 1200
)

SubCathegory.create!(
  cathegory_id: cat_three.id,
  name: "Pedicure",
  price: 15,
  time: 1500
)
puts "sub_cathegories created!"
puts ""
puts "seeds done"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
