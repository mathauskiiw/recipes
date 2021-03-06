# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password', name: 'AdminDefault') if Rails.env.development?

Category.create!(name:"Entrada")
Category.create!(name:"Prato Principal")
Category.create!(name:"Sobremesa")

Level.create!(name:"Amador")
Level.create!(name:"Estudante")
Level.create!(name:"Profissional")
