class Member < ApplicationRecord
    has_many :brewery_members
    has_many :breweries, through: :brewery_members
    has_many :member_fav_beers
    has_many :beers, through: :member_fav_beers
end