# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Machine.destroy_all
Category.destroy_all
User.destroy_all
puts 'base de donée nettoyée'

User.create(email: 'claire-du-12@laposte.net', password: 'aaaaaa')
puts 'users créés'

category1 = Category.create(name:'matériel agricole')
category2 = Category.create(name:'outillage')
puts 'catégories créées'

Machine.create(name:'débroussailleuse', description:'wow, cest le feu', price: 35.50, category: category1)
Machine.create(name:'sécateur', description:'ça coupe', price: 3, category: category1)
Machine.create(name:'tonelle', description:'idk', price: 44.50, category: category2)
puts 'machines crées'
