puts "Destroy all datas..."
puts "..."
puts "..."

User.destroy_all
Cathegory.destroy_all
Sub_cathegory.destroy_all

puts "All datas destroyed !"
puts ""

User.create!(email: "fonsecarika@gmail.com", password: "123456789")

puts "Rika created !"
puts ""

puts "create cathegories"
puts ""

cathegory.create!(
  name: NAME
)

Category.all.each do |category|
  case category.name
    when "Manicure"
      sub_mano_one = NAME[0]
      sub_mano_two = NAME[1]
      sub_mano_three = NAME[2]
      sub_mano_four = NAME[3]
      sub_mano_five = NAME[4]
      sub_mano_six = NAME[5]
      sub_mano_seven = NAME[6]
      sub_mano_height = NAME[7]
      sub_mano_nine = NAME[8]
      sub_mano_ten = NAME[9]
    when "Pedicure"
    when "Ονυχοπλαστική"
    when "Αντρική περιποίηση"
    when "εξτρα"
  end




puts "create sub_cathegories"
puts ""

sub_mano_one = sub_cathegory.create!(
name: "Manicure απλο",
price: 10,
time: 20
)

sub_mano_two = sub_cathegory.create!(
name: "Manicure semipermanent",
price: 15,
time: 30
)

sub_mano_three = sub_cathegory.create!(
name: "Semipermanent (σχήμα - χρώμα)",
price: 12,
time: 20
)

sub_mano_four = sub_cathegory.create!(
name: "aplo (σχήμα - χρώμα)",
price: 7,
time: 15
)

sub_mano_five = sub_cathegory.create!(
name: "Αφαίρεση Ημιμόνιμου",
price: 5,
time: 5
)

sub_mano_six = sub_cathegory.create!(
name: "Αφαίρεση Τεχνητών",
price: 10,
time: 15
)

sub_mano_seven = sub_cathegory.create!(
name: "ΤοποΘέτηση τεχνητών acrygel",
price: 40,
time: 60
)

sub_mano_height = sub_cathegory.create!(
name: "ΤοποΘέτηση τεχνητών acrylic",
price: 45,
time: 60
)

sub_mano_nine = sub_cathegory.create!(
name: "ΤοποΘέτηση τεχνητών gel",
price: 40,
time: 60
)

sub_mano_ten = sub_cathegory.create!(
name: "Φυσική Ενίσχυση acrygel",
price: 30,
time: 60
)

sub_mano_ten = sub_cathegory.create!(
name: "Φυσική Ενίσχυση acrylic",
price: 35,
time: 60
)

sub_mano_ten = sub_cathegory.create!(
name: "Φυσική Ενίσχυση gel",
price: 30,
time: 60
)

puts "sub_cathegories created!"


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
