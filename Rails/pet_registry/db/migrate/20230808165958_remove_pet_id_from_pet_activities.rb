class RemovePetIdFromPetActivities < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities_pets, :pet_id, :integer
  end
end
