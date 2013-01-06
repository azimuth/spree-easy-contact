class Topic < ActiveRecord::Base
  has_many :conversations

  validates :name, :presence => true, :uniqueness => true
  validates :email, :presence => true
  
end