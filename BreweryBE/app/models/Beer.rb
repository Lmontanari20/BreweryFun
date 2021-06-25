class Beer < ApplicationRecord
    belongs_to :brewery
    has_many :member_fav_beers
    has_many :members, through: :member_fav_beers
end