class Post < ActiveRecord::Base
  has_many :categorizations
  has_many :tags, :through => :categorizations
  has_many :comments
end
