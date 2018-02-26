class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :attack
      t.integer :life
      t.string :profile_pic
      t.integer :stat

      t.timestamps
    end
  end
end
