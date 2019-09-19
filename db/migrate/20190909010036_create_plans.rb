class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :place, null: false
      t.string :adventure
      t.integer :traveler_id

      t.timestamps
    end
  end
end
