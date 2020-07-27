
User
    has_many friendships
    has_many chirps
    has-many likes

Chirp
    belongs_to user ( ? can we alias this? )
    has_many likes
    has_many ?? users ?? (Can we alias this) through likes

Friendship
    belongs_to user ( follower? )
    belongs_to user (friend ? )

Like
    belongs_to chirp
    belongs_to user

Image
    belongs_to user

