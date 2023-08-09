class PetActivity < ApplicationRecord
    belongs_to :pet
    belongs_to :activity
end
