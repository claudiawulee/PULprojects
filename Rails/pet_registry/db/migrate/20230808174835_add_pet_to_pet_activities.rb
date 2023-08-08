class AddPetToPetActivities < ActiveRecord::Migration[7.0]
  def change
    add_column :pet_activities, :pet_id, :integer
    add_index :pet_activities, :pet_id
  end
end
