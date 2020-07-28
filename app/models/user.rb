class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chirps

  has_many :received_friendships, foreign_key: :friend_id, class_name: "Friendship"
  has_many :followers, through: :received_friendships, source: :follower

  has_many :given_friendships, foreign_key: :follower_id, class_name: "Friendship"
  has_many :follows, through: :given_friendships, source: :friend

end
