class ChangeColumnTypeInGames < ActiveRecord::Migration[7.1]
  def change
    change_column :games, :price, :integer
  end
end
