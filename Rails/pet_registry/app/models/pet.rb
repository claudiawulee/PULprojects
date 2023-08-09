class Pet < ApplicationRecord
    validates :name, presence: true
    validates :age, presence: true
    validates :animal, presence: true
    validates :color, presence: true
    validates :breed, presence: true

    has_and_belongs_to_many :activities

end
