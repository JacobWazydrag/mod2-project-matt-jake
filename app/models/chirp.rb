class Chirp < ApplicationRecord

    belongs_to :user
    has_many :fans, through: :likes, source :

end
