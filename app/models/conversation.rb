class Conversation < ActiveRecord::Base
  has_many :contacts
  belongs_to :topic

  validates_presence_of :topic
end
