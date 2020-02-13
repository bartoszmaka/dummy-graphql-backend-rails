# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = FactoryBot.create_list(:user, 10)

users.each do |user|
  FactoryBot.create_list(:article, rand(1..5), user: user)
end

Article.all.each do |article|
  FactoryBot.create_list(:comment, rand(1..3), user: users.sample, article: article)
end
