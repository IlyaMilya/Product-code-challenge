# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(id: 1, name: "Sarah")
user2 = User.create(id: 2, name: "Michael")
user3 = User.create(id: 3, name: "Brian")

puts "Creating products..."
product1 = Product.create(id: 1, name: "Stapler", price: 10)
product2 = Product.create(id: 2, name: "Whiteboard", price: 15)
product3 = Product.create(id: 3, name:"Dry Erase Markers", price: 5)
product4 = Product.create(id: 4, name: "Ballpoint Pens", price: 2)
product5 = Product.create(id: 5, name: "Scotch Tape", price: 3)

puts "Creating reviews..."
# *****************************************************************
# * TODO: create reviews! Remember, a review belongs to a product *
# * and a review belongs to an user.                              *
# *****************************************************************
# Create Reviews Here
c1 = Review.create(user_id: 2, product: 1, star_rating: 5, comment: "Great stapler" )
c2 = Review.create(user_id: 3, product: 1, star_rating: 2, comment: "Very crappy stapler" )
c3 = Review.create(user_id: 1, product: 2, star_rating: 2, comment: "Ehh, could've been a better whiteboard" )
c4 = Review.create(user_id: 2, product: 4, star_rating: 1, comment: "This sucks" )
c5 = Review.create(user_id: 1, product: 3, star_rating: 4, comment: "Cool item" )
c6 = Review.create(user_id: 3, product: 5, star_rating: 3, comment: "In the middle of the fence about this" )
puts "Seeding done!"