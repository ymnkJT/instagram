class Picture < ActiveRecord::Base
  validates :image, presence: true
  belongs_to :user
end
