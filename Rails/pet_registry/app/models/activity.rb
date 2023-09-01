class Activity < ApplicationRecord
    validates :action, presence: true
    # validates :high_energy, presence: true

    has_and_belongs_to_many :pets

    before_create { |activity| activity.action = activity.action.capitalize }
    
    def return_action
        "#{action}"
    end

    

end
