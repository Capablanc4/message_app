class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true 
  scope :recent_messages, -> { order(created_at: :desc).last(10)} 
end
