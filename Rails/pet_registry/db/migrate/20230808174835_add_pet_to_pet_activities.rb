class AddPetToPetActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :activities_pets, :pet_id, :integer
    add_index :activities_pets, :pet_id
  end
end
