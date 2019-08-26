class Message < ApplicationRecord
  belongs_to :user
  validates :messages, presence: true, length: {minimum:11}
end
