class CreateTravelers < ActiveRecord::Migration[6.0]
  def change
    create_table :travelers do |t|
      t.string :name, null: false
      t.string :passion

      t.timestamps
    end
  end
end
