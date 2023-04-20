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

2.times do |i|
  status = ["販売中", "売り切れ"]
  SaleStatus.create(sale_status_name: status[i])
end

#user_idカラムが存在するため、user作成よりも後に記述
4.times do |i|
  from = Date.new(2023,01,01)
  to = Date.new(2023,12,31)
  user = [1, 1, 2, 2]
  name = ["鉛筆", "椅子", "筆箱", "机"]
  category = [1, 2, 1, 2]
  description = ["芯が折れにくくて使いやすい", "腰が痛くなりにくい", "使いやすいサイズ感", "研究を重ねて考えられた使いやすい高さ"]
  status = [1, 2, 1, 2]
  Product.create(product_name: name[i],
                  category_id: category[i],
                  price: (i+1)*100,
                  description: description[i],
                  sale_status_id: status[i],
                  product_status_id: status[i],
                  regist_date: Random.rand(from..to),
                  user_id: user[i])
end

2.times do |i|
  from = Date.new(2023,01,01)
  to = Date.new(2023,12,31)
  Purchase.create(purchase_price: (i+1)*100,
                  purchase_quantity: i+1,
                  purchase_company: "foohoge#{i}",
                  order_date: Random.rand(from..to),
                  purchase_date: Random.rand(from..to),
                  product_id: i+1)
end
