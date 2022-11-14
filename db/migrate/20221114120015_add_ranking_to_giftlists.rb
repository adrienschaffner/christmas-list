class AddRankingToGiftlists < ActiveRecord::Migration[7.0]
  def change
    add_column :giftlists, :ranking, :integer
  end
end
