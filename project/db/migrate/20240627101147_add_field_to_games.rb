class AddFieldToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :image, :string
  end
end
