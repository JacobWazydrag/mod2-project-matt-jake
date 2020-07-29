# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#20.times do

30.times do
User.create(
    name:Faker::Name.name,
    email: Faker::Internet.email,
    password: 'topsecret',
    password_confirmation: 'topsecret'
    )
end

100.times do
    Friendship.create(
        follower_id: User.all.sample.id,
        friend_id: User.all.sample.id
    )
end

300.times do
    Chirp.create(
        user_id: User.all.sample.id
        chirp_text: Faker::Lorem.sentence
    )
