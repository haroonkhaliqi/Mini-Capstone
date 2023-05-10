# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
product = Product.new(name: "Manchester United Home Jersey 2022/23", price: 120, image_url: "http://t0.gstatic.com/images?q=tbn:ANd9GcReOpF1YnXvDfr1dDVZ4CazAdJJjDU42WptiZShWZEKqpe41sD1", description: "Condition: Brand new!! Any nameplate available at $20!")
product.save
product = Product.new(name: "Manchester United Away Jersey 2022/23", price: 120, image_url: "https://m.media-amazon.com/images/I/61c1YoEhrmL._AC_UX679_.jpg", description: "Condition: Brand new!! Any nameplate available at $20!")
product.save