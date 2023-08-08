class AddColorToPets < ActiveRecord::Migration[7.0]
  def change
    add_column :pets, :color, :string
  end
end
