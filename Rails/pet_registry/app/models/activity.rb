class Activity < ApplicationRecord
    validates :action, presence: true
    validates :high_energy, presence: true

    has_and_belongs_to_many :pets

end
