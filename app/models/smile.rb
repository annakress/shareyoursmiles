class Smile < ActiveRecord::Base
  attr_accessible :country, :smiletext, :username
  validates :smiletext, presence:true, length: { minimum: 10, maximum: 500}
  validates :username, length: { maximum: 30}
  validates :country, length: { maximum: 30}
end
