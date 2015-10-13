class Post < ActiveRecord::Base
  validates :url, :description, :presence => true
end
