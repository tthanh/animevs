class Post < ActiveRecord::Base
  belongs_to :fansub
  validates :title, presence: true, uniqueness: true
end
