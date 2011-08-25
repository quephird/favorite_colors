class FavoriteColor < ActiveRecord::Base
  belongs_to :color

  def self.color_codes
    ['R','O','Y','G','B','I','V']
  end
end
