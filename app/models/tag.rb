class Tag < ActiveRecord::Base
  belongs_to :fansub

  validates :title, presence: true
  validates :image_url, presence: true
  validates :public_date, presence: true
end
