class Rsvp < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :user, :event, presence: true
end
