class Fansub < ActiveRecord::Base
  has_one :tag
  has_many :posts
  #validates
  validates :name, presence: true, length: { maximum: 254 }
  validates :homepage, presence: true
end
