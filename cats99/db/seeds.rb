# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kitty = Cat.create!(birth_date: Date.parse('2007-02-03'), color: "black", name: "charlie", sex: 'F', description: "this is not me")
kitty2 = Cat.create!(birth_date: Date.parse('2022-12-03'), color: "orange", name: "brian", sex: 'M', description: "no soy yo")
kitty3 = Cat.create!(birth_date: Date.parse('2012-01-25'), color: "green", name: "brianna", sex: 'F', description: "yolo solo")
Cat.create!(birth_date: Date.parse('2020-11-12'), color: "white", name: "oreo", sex: 'M', description: "Charlie's cat")
Cat.create!(birth_date: Date.parse('2020-04-12'), color: "grey", name: "charlio", sex: 'M', description: "Brian's cat")
Cat.create!(birth_date: Date.parse('1984-05-05'), color: "purple", name: "bob", sex: 'F', description: "brian's owner")
# t.date :birth_date, null:false
# t.string :color, null:false
# t.string :name, null:false
# t.string :sex, null: false, limit: 1
# t.text :description, null: false

