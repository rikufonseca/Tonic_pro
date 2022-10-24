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

sub_mano_one = SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Manicure απλο",
  price: 11,
  time: 1200
)

sub_mano_two = SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Manicure Ημιμόνιμο",
  price: 16,
  time: 1800
)

sub_mano_three = SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Ημιμόνιμο (σχήμα - χρώμα)",
  price: 10,
  time: 1200
)

sub_mano_four = SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "aplo (σχήμα - χρώμα)",
  price: 6,
  time: 900
)

sub_mano_five = SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Αφαίρεση Ημιμόνιμου",
  price: 5,
  time: 300
)

sub_mano_six = SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Αφαίρεση Τεχνητών",
  price: 10,
  time: 900
)

sub_mano_seven = SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "ΤοποΘέτηση τεχνητών acrygel",
  price: 40,
  time: 3600
)

sub_mano_height = SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "ΤοποΘέτηση τεχνητών acrylic",
  price: 45,
  time: 3600
)

sub_mano_nine = SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "ΤοποΘέτηση τεχνητών gel",
  price: 40,
  time: 3600
)

sub_mano_ten = SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Φυσική Ενίσχυση acrygel",
  price: 30,
  time: 3600
)

sub_mano_eleven = SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Φυσική Ενίσχυση acrylic",
  price: 35,
  time: 3600
)

sub_mano_twelve = SubCathegory.create!(
  cathegory_id: cat_one.id,
  name: "Φυσική Ενίσχυση gel",
  price: 30,
  time: 3600
)

sub_pedi_one = SubCathegory.create!(
  cathegory_id: cat_two.id,
  name: "Pedicure απλο",
  price: 15,
  time: 1800
)

sub_pedi_two = SubCathegory.create!(
  cathegory_id: cat_two.id,
  name: "Pedicure Ημιμόνιμο",
  price: 20,
  time: 2400
)

sub_pedi_three = SubCathegory.create!(
  cathegory_id: cat_two.id,
  name: "Pedicure θεραπευτικο",
  price: 23,
  time: 3000
)

sub_extra_one = SubCathegory.create!(
  cathegory_id: cat_four.id,
  name: "Χτισιμό ενός νυχίου",
  price: 3,
  time: 300
)

sub_extra_two = SubCathegory.create!(
  cathegory_id: cat_four.id,
  name: "Σχεδίο",
  price: 1,
  time: 120
)

sub_extra_three = SubCathegory.create!(
  cathegory_id: cat_four.id,
  name: "Rubber Base",
  price: 2,
  time: 120
)

sub_extra_four = SubCathegory.create!(
  cathegory_id: cat_four.id,
  name: "Φρύδια",
  price: 5,
  time: 300
)

sub_man_one = SubCathegory.create!(
  cathegory_id: cat_three.id,
  name: "Manicure",
  price: 10,
  time: 1200
)

sub_man_two = SubCathegory.create!(
  cathegory_id: cat_three.id,
  name: "Pedicure",
  price: 15,
  time: 1500
)
puts "sub_cathegories created!"
puts ""

Cathegory.all.each do |cathegory|
  case cathegory.name
    when "Manicure"
      cat_one = [ sub_mano_one, sub_mano_two, sub_mano_three, sub_mano_four, sub_mano_five, sub_mano_six, sub_mano_seven, sub_mano_height, sub_mano_nine, sub_mano_ten, sub_mano_eleven, sub_mano_twelve ]
    when "Pedicure"
      cat_two = [ sub_pedi_one, sub_pedi_two, sub_pedi_three ]
    when "Αντρική περιποίηση"
      cat_three = [ sub_man_one, sub_man_two]
    when "εξτρα"
      cat_four = [ sub_extra_one, sub_extra_two, sub_extra_three, sub_extra_four ]
  end
end

puts "sub_cathegories in cathegories created!"
puts ""
puts "seeds done"


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
