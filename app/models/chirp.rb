class Chirp < ApplicationRecord

    belongs_to :user
    has_many :fans, foreign_key: :author_id, class_name: "Like"

end
