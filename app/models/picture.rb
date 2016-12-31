class Picture < ActiveRecord::Base
  validates :image, presence: true
end
