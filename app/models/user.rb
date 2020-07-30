class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  acts_as_voter
  
  has_many :chirps
  has_many :pics 

  has_many :incoming_friendships, foreign_key: :friend_id, class_name: "Friendship", dependent: :destroy
  has_many :followers, through: :incoming_friendships, source: :follower

  has_many :outgoing_friendships, foreign_key: :follower_id, class_name: "Friendship", dependent: :destroy
  has_many :friends, through: :outgoing_friendships, source: :friend

end
