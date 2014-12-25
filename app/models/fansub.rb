class Fansub < ActiveRecord::Base
  has_one :tag
  #validates
  validates :name, presence: true, length: { maximum: 254 }
  validates :homepage, presence: true
end
