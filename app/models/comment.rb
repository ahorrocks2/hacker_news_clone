class Comment < ActiveRecord::Base
  validates :name, :report, :presence => true
  belongs_to :post
end
