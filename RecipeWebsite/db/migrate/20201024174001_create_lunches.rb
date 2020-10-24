class CreateLunches < ActiveRecord::Migration[5.0]
  def change
    create_table :lunches do |t|
      t.string :title
      t.integer :total_time
      t.integer :yields
      t.string :ingredients
      t.string :instructions
      t.string :image
      t.string :host

      t.timestamps
    end
  end
end
