# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 10.times do
#     User.create(
#       first_name: Faker::Name.name,
#       last_name: Faker::Name.name,
#       email: Faker::Internet.email,
#       password: Faker::Internet.password
#     )
# end

# 10.times do
#     Newsletter.create(
#       title: Faker::Book.title,
#       sub_title: Faker::Lorem.sentence(word_count: 6),
#       publish_date: Faker::Date.backward(days: 14),
#       summary: Faker::Lorem.paragraph(sentence_count: 4),
#       user_id: rand(20..25)
#     )
# end

# 10.times do
#     Article.create(
#       title: Faker::Book.title,
#       byline: Faker::Name.name,
#       body: Faker::Lorem.paragraph(sentence_count: 4),
#       newsletter_id: rand(10..17),
#     )
# end

10.times do
    Event.create(
      title: Faker::Book.title,
      body: Faker::Lorem.paragraph(sentence_count: 4),
      date: Faker::Date.backward(days: 14),
      newsletter_id: rand(10..17),
    )
end
