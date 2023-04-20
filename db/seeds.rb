# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
UserClassification.create(user_classification_name: "ゲスト")

2.times do |i|
  User.create!(last_name: "hoge",
              first_name: "geho",
              password: "foobar#{i+1}",
              zipcode: "1111111",
              prefecture: "東京都",
              municipality: "港区",
              address: "赤坂1-1",
              apartments: "hogeハイム1-1",
              email: "hogehoge#{i+1}@example.com",
              phone_number: "09012345678",
              user_classification: UserClassification.first,
              company_name: "株式会社あんず",
              delete_flag: false)
end