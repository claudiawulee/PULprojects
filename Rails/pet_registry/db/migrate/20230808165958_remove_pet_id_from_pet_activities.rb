class RemovePetIdFromPetActivities < ActiveRecord::Migration[7.0]
  def change
    remove_column :pet_activities, :pet_id, :integer
  end
end
