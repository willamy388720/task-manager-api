# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  email: "admin@admin.com",
  password: "123456",
  password_confirmation: "123456"
)

10.times do
  User.create(
    email: Faker::Internet.email,
    password: "123456",
    password_confirmation: "123456"
  )
end

100.times do 
  Task.create(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph(sentence_count: 2),
    done: [true, false].sample,
    deadline: "2020-05-30",
    user: User.all.sample 
  )
end