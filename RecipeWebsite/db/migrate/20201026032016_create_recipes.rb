class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :types
      t.string :restrictions
      t.integer :time
      t.string :yield
      t.string :ingredients
      t.string :instructions
      t.string :image
      t.string :link
      t.string :make
      t.string :make_by

      t.timestamps
    end
  end
end
