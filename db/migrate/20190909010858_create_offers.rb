class CreateOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :offers do |t|
      t.string :offered_by, null: false
      t.string :about
      t.string :departs
      t.string :length
      t.decimal :price_from
      t.integer :plan_id

      t.timestamps
    end
  end
end
