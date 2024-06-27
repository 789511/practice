class AddFieldsToGames < ActiveRecord::Migration[7.1]
  def change
    add_column :games, :title, :string
    add_column :games, :description, :text
    add_column :games, :price, :decimal
    add_column :games, :category, :string
  end
end
