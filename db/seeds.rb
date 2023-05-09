# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# rubocop:disable Metrics/BlockLength
ActiveRecord::Base.transaction do
  2.times do |i|
    UserClassification.create!(user_classification_name: ["管理者", "一般ユーザー"][i])
  end

  2.times do |i|
    user_classification = UserClassification.find_by(user_classification_name: ["管理者", "一般ユーザー"][i])
    User.create!(last_name: "hoge",
                 first_name: "geho",
                 password_digest: "foobar#{i + 1}",
                 zipcode: "1111111",
                 prefecture: "東京都",
                 municipality: "港区",
                 address: "赤坂1-1",
                 apartments: "hogeハイム1-1",
                 email: "hogehoge#{i + 1}@example.com",
                 phone_number: "09012345678",
                 user_classification: user_classification,
                 company_name: "株式会社あんず",
                 delete_flag: false)
  end

  2.times do |i|
    category = ["文房具", "家具"]
    Category.create!(category_name: category[i])
  end

  2.times do |i|
    status = ["新品", "中古"]
    ProductStatus.create!(product_status_name: status[i])
  end

  2.times do |i|
    status = ["販売中", "売り切れ"]
    SaleStatus.create!(sale_status_name: status[i])
  end

  # user_idカラムが存在するため、user作成よりも後に記述
  4.times do |i|
    from = Date.new(2023, 0o1, 0o1)
    to = Date.new(2023, 12, 31)
    user = [1, 1, 2, 2]
    name = ["鉛筆", "椅子", "筆箱", "机"]
    category = [1, 2, 1, 2]
    description = ["芯が折れにくくて使いやすい", "腰が痛くなりにくい", "使いやすいサイズ感", "研究を重ねて考えられた使いやすい高さ"]
    status = [1, 2, 1, 2]
    Product.create!(product_name: name[i],
                    category_id: category[i],
                    price: (i + 1) * 100,
                    description: description[i],
                    sale_status_id: status[i],
                    product_status_id: status[i],
                    regist_date: Random.rand(from..to),
                    user_id: user[i])
  end

  2.times do |i|
    from = Date.new(2023, 0o1, 0o1)
    to = Date.new(2023, 12, 31)
    Purchase.create!(purchase_price: (i + 1) * 100,
                     purchase_quantity: i + 1,
                     purchase_company: "foohoge#{i}",
                     order_date: Random.rand(from..to),
                     purchase_date: Random.rand(from..to),
                     product_id: i + 1)
  end

  2.times do |i|
    user = [1, 2]
    order_date = Date.new(2023.01, 0o1)
    order_number = Random.rand(10000)
    Order.create!(
      user_id: user[i],
      order_date: order_date,
      order_number: order_number,
    )
  end
  2.times do |i|
    shipment_status = ["準備中", "発送済"]
    ShipmentStatus.create!(
      shipment_status_name: shipment_status[i],
    )
  end

  8.times do |i|
    product_id = [1, 1, 1, 1, 2, 2, 2, 2]
    order_id = [1, 2, 1, 2, 1, 2, 1, 2]
    order_quantity = 1
    shipment_status = [1, 2, 1, 2, 1, 2, 1, 2]
    shipment_date = Date.new(2024, 0o1, 0o1)
    OrderDetail.create!(
      product_id: product_id[i],
      order_id: order_id[i],
      shipment_status_id: shipment_status[i],
      order_quantity: order_quantity,
      shipment_date: shipment_date,
    )
  end
end
# rubocop:enable Metrics/BlockLength
