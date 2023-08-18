class RenamePetActivities < ActiveRecord::Migration[7.0]
  def change
      rename_table :pet_activities, :activities_pets
  end
end
