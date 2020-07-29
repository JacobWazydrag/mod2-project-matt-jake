class Chirp < ApplicationRecord
    acts_as_votable
    belongs_to :user
    #has_many :fans, foreign_key: :author_id, class_name: "Like"

    

end
