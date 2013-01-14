class Conversation < ActiveRecord::Base
  has_many :contacts
  belongs_to :topic

  validates_presence_of :topic
  
  scope :open, where(:status => 'open')
  scope :closed, where(:status => 'closed')
  
end
