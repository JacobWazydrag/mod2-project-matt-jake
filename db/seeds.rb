require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


50.times do
User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: 'topsecret',
    password_confirmation: 'topsecret'
    )
end

index = 50
count = 0
50.times do

    Friendship.create(follower_id: index, friend_id: count)
    index -= 1
    count += 1
end

300.times do
    Chirp.create(
        user_id: User.all.sample.id,
        chirp_text: Faker::Lorem.sentence
    )
Pic.create(
    user_id: User.all.sample.id,
    pic_url: 'https://picsum.photos/64'
    )
end

