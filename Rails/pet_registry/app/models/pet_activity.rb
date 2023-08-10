class PetActivity < ApplicationRecord
    validates :pet_id, presence: true
    validates :activity_id, presence: true

    belongs_to :pet
    belongs_to :activity
end
