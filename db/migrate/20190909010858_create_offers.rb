class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
    	t.string :tour_name, null: false
      t.integer :provider_id
      t.string :about
      t.string :departs
      t.string :length
      t.decimal :price

      t.timestamps
    end
  end
end
