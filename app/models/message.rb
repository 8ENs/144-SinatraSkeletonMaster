class Message < ActiveRecord::Base
  validates :title, :content, presence: true
  belongs_to :author
end