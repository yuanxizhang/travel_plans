class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :place
      t.decimal :budget
      t.integer :length_of_stay

      t.timestamps
    end
  end
end
