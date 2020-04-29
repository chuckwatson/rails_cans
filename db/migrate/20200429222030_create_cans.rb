class CreateCans < ActiveRecord::Migration[5.2]
  def change
    create_table :cans do |t|
      t.string :name
      t.float :abv
      t.references :brewery, foreign_key: true
      t.references :hop, foreign_key: true
      t.timestamps
    end
  end
end
