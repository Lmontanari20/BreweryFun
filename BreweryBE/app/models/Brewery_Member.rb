class BreweryMember < ApplicationRecord
    belongs_to :brewery
    belongs_to :member
end