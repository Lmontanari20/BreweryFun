class MemberFavBeer < ApplicationRecord 
    belongs_to :member
    belongs_to :beer
end