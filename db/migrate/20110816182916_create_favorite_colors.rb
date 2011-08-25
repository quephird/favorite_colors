class CreateFavoriteColors < ActiveRecord::Migration
  def self.up
    create_table :favorite_colors do |t|
      t.string :color_code
      t.integer :preference_number

      t.timestamps
      t.references :person
    end
  end

  def self.down
    drop_table :favorite_colors
  end
end
