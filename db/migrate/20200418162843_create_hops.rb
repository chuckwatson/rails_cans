class CreateHops < ActiveRecord::Migration[5.2]
  def change
    create_table :hops do |t|
      t.string :name

      t.timestamps
    end
  end
end
