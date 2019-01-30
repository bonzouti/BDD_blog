
require 'faker'
10.times do 
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
 end
10.times do
  article = Article.create!(title: Faker::Lorem.word, user_id: rand(1..10),category_id: rand(1..10), content: Faker::Lorem.sentence(3))
  end
10.times do
 comment = Comment.create!(content: Faker::Lorem.sentence(3), user_id: rand(1..10), article_id: rand(1..10))
end
10.times do
 category = Category.create!(name: Faker::Lorem.word)
end
