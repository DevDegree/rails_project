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

@minimalism = Tag.create(name: 'minimalism')
@nsfw = Tag.create(name: 'nsfw')
@memes = Tag.create(name: 'memes')
@ruby = Tag.create(name: 'ruby')
@events = Tag.create(name: 'events')

@comp1406 = Post.create(title: 'COMP1406', content: 'This course is a random example.', date: DateTime.now(), user_id: @jalena.id, category_id: @professional.id)
@theranos = Post.create(title: 'Bad Blood', content: 'This book is a random example.', date: DateTime.now(), user_id: @helen.id, category_id: @books.id)
@growing = Post.create(title: 'Growing Pains', content: 'This personal learning is a random example.', date: DateTime.now(), user_id: @miley.id, category_id: @personal.id)
@play = Post.create(title: 'Playing Dressup', content: 'This activity is a random example.', date: DateTime.now(), user_id: @gina.id, category_id: @fun.id)
@munchies = Post.create(title: 'Best Munchies of Ottawa', content: 'This list is a random example.', date: DateTime.now(), user_id: @erin.id, category_id: @random.id)

@comments = Comment.create([{content: 'This comment is related to blah', date: DateTime.now(), user_id: @jalena.id, post_id: @theranos.id}, {content: 'This comment is related to blah', date: DateTime.now(), user_id: @helen.id , post_id: @comp1406.id}, {content: 'This comment is related to blah', date: DateTime.now(), user_id: @gina.id , post_id: @growing.id}, {content: 'This comment is related to blah', date: DateTime.now(), user_id: @miley.id , post_id: @munchies.id}, {content: 'This comment is related to blah', date: DateTime.now(), user_id: @erin.id , post_id: @play.id}])

