class AddColorIdToFavoriteColors < ActiveRecord::Migration
  def self.up
    add_column :favorite_colors, :color_id, :integer
  end

  def self.down
    remove_column :favorite_colors, :color_id
  end
end
