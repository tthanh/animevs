class Fansub < ActiveRecord::Base

  #validates
  validates :name, presence: true, length: { maximum: 254 }
  validates :homepage, presence: true
end
