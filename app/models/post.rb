class Post < ActiveRecord::Base
  validates :url, :description, :presence => true
  has_many :comments
end
