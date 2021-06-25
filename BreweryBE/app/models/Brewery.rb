class Brewery < ApplicationRecord
    has_many :beers
    has_many :brewery_members
    has_many :members, through: :brewery_members
end