class CreateWeapons < ActiveRecord::Migration[5.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :damage
      t.integer :speed

      t.timestamps
    end
  end
end
