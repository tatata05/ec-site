# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

2.times do |i|
  category = ["文房具", "家具"]
  Category.create(category_name: category[i])
end

2.times do |i|
  status = ["新品", "中古"]
  ProductStatus.create(product_status_name: status[i])
end

4.times do |i|
  SaleStatus.create(sale_status_name: "hogefoobar#{i}")
end

#user_idカラムが存在するため、user作成よりも後に記述
4.times do |i|
  from = Date.new(2023,01,01)
  to = Date.new(2023,12,31)
  user = [1, 1, 2, 2]
  Product.create(product_name: "hogebar#{i}",
                  category_id: i+1,
                  price: (i+1)*100,
                  description: "hogehogehoge#{i}",
                  sale_status_id: i+1,
                  product_status_id: i+1,
                  regist_date: Random.rand(from..to),
                  user_id: user[i])
end

4.times do |i|
  from = Date.new(2023,01,01)
  to = Date.new(2023,12,31)
  Purchase.create(purchase_price: (i+1)*100,
                  purchase_quantity: i+1,
                  purchase_company: "foohoge#{i}",
                  order_date: Random.rand(from..to),
                  purchase_date: Random.rand(from..to),
                  product_id: i+1)
end
