class Person < ActiveRecord::Base
  has_many :favorite_colors
  accepts_nested_attributes_for :favorite_colors, :allow_destroy => true, :reject_if => proc { |fc| fc['color_id'].blank? }
  before_save :mark_favorite_colors_for_removal

  def mark_favorite_colors_for_removal
    favorite_colors.each do |fc|
       fc.mark_for_destruction if fc.preference_number.blank?
    end
  end
end
