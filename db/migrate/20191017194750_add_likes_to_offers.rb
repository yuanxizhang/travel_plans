class AddLikesToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :likes, :integer, default: 0
  end
end
