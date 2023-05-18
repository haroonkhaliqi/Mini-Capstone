# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
supplier = Supplier.create!(name: "Adidas", email: "adidas@gmail.com", phone_number: "123-123-1234")
product = Product.create!({name: "Manchester United Home Jersey 2022/23", price: 120, description: "Condition: Brand new!! Any nameplate available at $20!", inventory: 11, supplier_id: supplier.id})
Image.create(url: "https://www.soccerpro.com/wp-content/uploads/h13881_adidas_manu_home_jsy_2022_23_01-1024x1024.jpg", product_id: product.id)
Image.create(url: "https://www.footballkitnews.com/wp-content/uploads/2022/07/Ronaldo-in-Man-United-Kit-2022-23.jpg", product_id: product.id)
product = Product.create!({name: "Manchester United Away Jersey 2022/23", price: 120, description: "Condition: Brand new!! Any nameplate available at $20!", inventory: 5, supplier_id: supplier.id})
Image.create(url: "https://m.media-amazon.com/images/I/61c1YoEhrmL._AC_UX679_.jpg", product_id: product.id)
product = Product.create!({name: "Manchester United Third Jersey 2022/23", price: 120, description: "Condition: Brand new!! Any nameplate available at $20!", inventory: 6, supplier_id: supplier.id})
Image.create(url: "https://assets.adidas.com/images/w_600,f_auto,q_auto/29e901e4835945bf87baaebc00d7e249_9366/Manchester_United_22-23_Third_Mini_Kit_Green_H64063.jpg", product_id: product.id)
product = Product.create!({name: "Manchester United Soccer Ball", price: 30, description: "Adidas size 5 soccer ball with Manchester United decal", inventory: 16, supplier_id: supplier.id})
Image.create(url: "https://m.media-amazon.com/images/I/41IXs27qDfL.jpg", product_id: product.id)
product = Product.create!({name: "Adidas Manchester United Red Cap", price: 35, description: "A red soccer hat for Manchester United. Custom name on side available for $12", inventory: 15, supplier_id: supplier.id})
Image.create(url: "https://assets.adidas.com/images/w_600,f_auto,q_auto/07d90c6a47b14774a8efade301456516_9366/Manchester_United_Baseball_Cap_Red_H62461_01_standard.jpg", product_id: product.id)