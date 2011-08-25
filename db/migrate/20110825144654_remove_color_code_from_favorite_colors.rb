class RemoveColorCodeFromFavoriteColors < ActiveRecord::Migration
  def self.up
    remove_column :favorite_colors, :color_code
  end

  def self.down
    add_column :favorite_colors, :color_code, :string
  end
end
