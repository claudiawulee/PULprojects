class CreateActivitiesPets < ActiveRecord::Migration[7.0]
  def change
    create_table :activities_pets do |t|
      t.integer :pet_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
