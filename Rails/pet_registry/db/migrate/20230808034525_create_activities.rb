class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :action
      t.boolean :high_energy

      t.timestamps
    end
  end
end
