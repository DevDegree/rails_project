# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@personal = Category.create(name: 'personal')
@professional = Category.create(name: 'professional')
@books = Category.create(name: 'books')
@fun = Category.create(name: 'fun')
@random = Category.create(name: 'random')

@helen = User.create(first_name: 'Helen', last_name: 'Lin', email: 'helen.lt.lin@shopify.com')
@gina = User.create(first_name: 'Gina', last_name: 'Bak', email: 'gina.bak@shopify.com')
@erin = User.create(first_name: 'Erin', last_name: 'Son', email: 'erin.son@shopify.com')
@jalena = User.create(first_name: 'Jalena', last_name: 'Lee', email: 'jalena.lee@shopify.com')
@miley = User.create(first_name: 'Miley', last_name: 'Cho', email: 'miley.cho@dogify.com')
